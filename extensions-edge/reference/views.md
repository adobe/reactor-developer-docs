---
title: Views
order: 13
---

# Views

Each event, condition, action, or data element type may provide a view allowing a user to supply settings. The extension may also have a top-level [extension configuration view](../extension-configuration) which allows users to supply global settings for the entire extension. The process of building a view is identical across all types of views.

## Including A Document Type

Be sure to include a `doctype` tag in your HTML file. Typically this means beginning your HTML file with the following:

```html
<!DOCTYPE html>
```

## Including Launch's Iframe Script

Include Launch's iframe script within your view's HTML:

`<script src="https://assets.adobedtm.com/activation/reactor/extensionbridge/extensionbridge.min.js"></script>`

This script provides a communication API to allow your view to communicate with the Launch application.

## Registering With The Extension Bridge Communication API

After Launch's iframe script is loaded, you will need to provide some methods to Launch which it will use for communication. Call `window.extensionBridge.register` and pass it an object as follows:

```javascript
window.extensionBridge.register({
  init: function(info) {
    // Populate view with info.settings which will exist if the user is editing something
    // that was previously saved.
    if (info.settings) {
      document.getElementById('name').value = info.settings.name;
    }
  },
  validate: function() {
    // Return whether the view is valid.
    return document.getElementById('name').value.length > 0;
  },
  getSettings: function() {
    // Return user-provided settings.
    return {
      name: document.getElementById('name').value
    };
  }
});
```

The content of each of the methods will need to be modified to accommodate your particular view requirements.

#### `init(info: Object)`

The `init` method will be called by Launch as soon as the view has been loaded into the iframe. It will be passed a single argument which will be an object containing the following properties:

* `info.settings: Object`

  An object containing settings that were previously saved from this view. If `settings` is `null`, it indicates that the user is creating the initial settings rather than loading a saved version. If `settings` is an object, you should use it to populate your view since the user is choosing to edit the previously persisted settings.

* `info.extensionSettings: Object`

  Settings saved from the extension configuration view. This can be useful to access extension settings in views that are not the extension configuration view. If the current view is the extension configuration view, use `info.settings` instead.

* `info.propertySettings: Object`

  An object containing settings for the property. See the [turbine.propertySettings documentation](../turbine-free-variable/#turbinepropertysettings-object) for detail on what is contained in this object.

* `info.tokens: Object`

  An object containing API tokens.

  * `info.tokens.imsAccess: string`

    For accessing Adobe APIs from inside the view you will need to usually use an IMS token. This token will made available only for extensions developed by Adobe. If you are an Adobe employee representing an extension authored by Adobe, please [email the Launch engineering team](mailto:reactor@adobe.com) and provide the name of the extension so we can add it to the allowed list.

* `info.company: Object`

  An object containing information about the user's company.

  * `info.company.orgId: string`

    The Marketing Cloud organization ID (a 24-character alphanumeric string).

* `info.schema: Object`

  An object in [JSON Schema](http://json-schema.org/) format. This object will come from the [extension manifest](../extension-manifest) and may be helpful in validating your form.

Your view should use this information to render and manage its form. It is likely you will only need to deal with `info.settings`, but the other information is provided in case it is necessary.

#### `validate() => boolean`

The `validate` method will be called after the user hits the "Save" button in Launch.

It should return one of the following:

* a boolean indicating whether the user's input is valid
* a promise to later be resolved with a boolean indicating whether the user's input is valid

It's up to you as the extension developer to determine what constitutes valid input since your library module will be acting upon that input.

If the user's input is invalid, please show some indication of this within your view so users will know what needs to be corrected.

#### `getSettings() => Object`

The `getSettings` method will be called after the user hits the "Save" button in Launch and the view has been validated.

The function should return one of the following:

* an object containing settings based on user input
* a promise to later be resolved with an object containing settings based on user input

This settings object will later be emitted in the Launch runtime library. The content of this object is under your discretion. The object must be serializable and deserializable to and from JSON. Values such as functions or [RegExp](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp) instances don't meet these criteria and are therefore not allowed.

## Leveraging Shared Views

The `window.extensionBridge` object has several methods that allow you to take advantage of existing views available in Launch so you don't have to reproduce them within your view. The available methods are as follows:

### `window.extensionBridge.openCodeEditor([options: Object]) => Promise`

```javascript
window.extensionBridge.openCodeEditor().then(function(code) {
  console.log(code);
});
```

Calling this method will show a modal allowing a user to edit a snippet of code. When the user has finished editing the code, the promise will be resolved with the updated code. If the user closes the code editor without electing to save changes, the promise will never be resolved. The `options` object should be structured as follows:

* `options.code: string`

  Code that should be shown in the editor. This is typically provided when the user is editing existing code. If this is not provided, the code editor will be empty when opened.

* `options.language: string`

  The language of the code that will be edited. Valid options are `javascript`, `html`, `css`, `json`, and `plaintext`. If this is not provided, `javascript` will be assumed.

### `window.extensionBridge.openRegexTester([options: Object]) => Promise`

```javascript
window.extensionBridge.openRegexTester().then(function(pattern) {
  console.log(pattern);
});
```

Calling this method will show a modal allowing a user to test and modify a regular expression pattern. When the user has finished editing the regular expression, the promise will be resolved with the updated regular expression pattern. If the user closes the regex tester without electing to save changes, the promise will never be resolved. The `options` object should be structured as follows:

* `options.pattern: string`

  The regular expression pattern that should be used as the initial value of the pattern field inside the tester. This is typically provided when the user is editing an existing regular expression. If this is not provided, the pattern field will initially be empty.

* `options.flags: string`

  The regular expression flags that should be used by the tester. As an example, `gi` would indicate the global match flag and the ignore case flag. These flags are not modifiable by the user within the tester, but are used to demonstrate the specific flags the extension will use when executing the regular expression. If this is not provided, no flags will be used within the tester. See [MDN's RegExp documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp) for more information about regular expression flags.

  A common scenario is an extension that allows users to toggle case sensitivity for a regular expression. In order to support this, the extension would typically provide a checkbox within its extension view that, when checked, enables case insensitivity (represented by the `i` flag). The settings object saved by the view would need to represent whether the checkbox was checked so that the library module executing the regular expression can know whether to use the `i` flag. Also, when the extension view wishes to open the regular expression tester, it would need to pass the `i` flag if the case insensitivity checkbox is checked. This allows the user to properly test the regular expression with case insensitivity enabled.

### `window.extensionBridge.openDataElementSelector([options: Object]) => Promise`

```javascript
window.extensionBridge.openDataElementSelector().then(function(dataElement) {
  console.log(dataElement);
});
```

Calling this method will show a modal allowing a user to select a data element. When the user has finished selecting a data element, the promise will be resolved with the name of the selected data element (by default the name will be wrapped in percent signs). If the user closes the element selector without electing to save changes, the promise will never be resolved. The `options` object should be structured as follows:

* `options.tokenize: boolean`

  Whether the name of the selected data element should be wrapped in percent signs before resolving the promise. See [Supporting Data Elements](#supporting-data-elements) for why this is useful. This option defaults to `true`.

## Supporting data elements

It's probable that your views have form fields where users would like to leverage data elements. For example, if your view has a textfield where the user should enter a product name, it may not make sense for the user to type a hard-coded value into the field. Instead, they may want the value of the field to be dynamic (determined at runtime) and can accomplish this by using a data element.

As an example, assume we are building an extension that sends a beacon to track a conversion. Let's also assume that one of the pieces of data our beacon sends is a product name. Our extension view that allows the Launch user to configure the beacon would likely have a text field for product name. It typically wouldn't make much sense for the Launch user to type in a static product name like "Calzone Oven XL" because the product name is likely dependent upon the page from which the beacon will be sent. This is a great case for a data element.

If a user wanted to use the data element named `productname` for the product name value, they may type the name of the data element with percent signs on both sides (`{{productname}}`). We refer to the percentage-sign-wrapped data element name as a "data element token" and Launch users are often familiar with this construct. Your extension, in turn, would save the data element token inside the `settings` object it exports. Your settings object may then look like this:

```javascript
{
  productName: '{{productname}}'
}
```

At runtime, before passing the settings object to your library module, Launch will deeply scan the settings object and replace any data element tokens with their respective values. If, at runtime, the value of the `productname` data element were `Ceiling Medallion Pro 2000`, the settings object that would be passed into your library module would be as follows:

```javascript
{
  productName: 'Ceiling Medallion Pro 2000'
}
```

To indicate where it may be helpful for users to use data elements and to make it easy for users to enter a data element, we highly recommend adding an icon button next to such fields as shown here:

![data element field](/images/data-element-field.png)

When the button next to the text field is clicked by a user, call `window.extensionBridge.openDataElementSelector` as [outlined above](#windowextensionbridgeopendataelementselectorcallback-function-options-object). This will display a list of the user's data elements that the user can choose from rather than forcing them to remember the name and type percent signs. Once the user has selected a data element, you will receive the name of the selected data element wrapped in percent signs (unless you've set the `tokenize` option to `false`). We encourage you to then populate the text field with the result.

### Data element token replacement methodology

As described previously, if a persisted settings object consisted of the following:

```javascript
{
  productName: '{{productname}}'
}
```

And, at runtime, the value of the `productname` data element were `Ceiling Medallion Pro 2000`, then the settings object that is passed into your library module would be as follows:

```javascript
{
  productName: 'Ceiling Medallion Pro 2000'
}
```

Whenever a value inside a settings object is encountered that consists of a percent sign, then a string, then a percent sign, _and nothing more_, it is replaced by the data element value _without changing the data element value's type_.

For example, if the value of `productname` at runtime were instead the number `538` (not a string), the settings object passed to your library module would be as follows:

```javascript
{
  productName: 538
}
```

Notice that the resulting `538` is a number here and not a string. Similarly, if the data element value at runtime were a function (a rare but possible use case), the resulting settings object would be as follows:

```javascript
{
  productName: function() { … }
}
```

On the other hand, let's assume the persisted settings object were as follows:

```javascript
{
  productName: '{{productname}} - {{modelnumber}}'
}
```

In this case, because the value of `productName` is more than a single data element token, the result will always be a string. Each data element token will be replaced by its respective value after being cast to a string. If, at runtime, the value of `productname` were `Ceiling Medallion Pro` (a string) and `modelnumber` were `2000` (a number), the resulting settings object passed into your library module would be:

```javascript
{
  productName: 'Ceiling Medallion Pro - 2000'
}
```

## Avoid Navigation

Communication between the extension view and the containing Launch user interface is contingent upon no navigation occurring within the extension view. As such, please avoid adding anything to your extension view that would allow the user to navigate away from the extension view's HTML page. For example, if you provide a link within your extension view, ensure it opens a new browser window (typically by adding `target="_blank"` to the anchor tag). If you choose to use a `form` element inside your extension view, ensure that the form is never submitted. Submitting the form can accidentally occur if you have a `button` element within the form and fail to add `type="button"` to it. Submitting a form within your extension view would cause the HTML document to refresh, resulting in a broken user experience.
