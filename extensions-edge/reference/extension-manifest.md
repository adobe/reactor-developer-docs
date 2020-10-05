---
title: Extension Manifest
order: 14
---

# Extension Manifest

In your extension's base directory you must create a file called `extension.json`. This contains critical details about your extension that allows Launch to properly consume it. Some of the contents are formed after the manner of [npm's `package.json`](https://docs.npmjs.com/files/package.json).

An example `extension.json` can be found [in our Hello World extension](https://github.com/adobe/reactor-helloworld-extension/blob/master/extension.json).

An `extension.json` must consist of the following:

* `name` (required)

  The name of your extension. It must be unique from all other Reactor extensions and must comply with [naming rules](#naming-rules). **This is used by Launch as an identifier and should not be changed after you publish your extension.**

* `platform` (required)

  The platform for your extension.

* `version` (required)

  The version of your extension. It must follow the [semver](http://semver.org/) versioning format. This is consistent with [npm version field](https://docs.npmjs.com/files/package.json#version).

* `displayName` (required)

  The human-readable name of your extension. This will be shown to users of Launch. There is no need to mention "Launch" or "Extension"; users will already know they are looking at a Launch extension.

* `description` (required)

  The description of your extension. This will be shown to users of Launch. If your extension empowers users to implement your product on their website, describe what your product does. There is no need to mention "Launch" or "Extension"; users will already know they are looking at a Launch extension.

* `iconPath`

  The relative path to the icon that will be displayed for the extension within Launch. It should not not begin with a slash. It must reference an SVG file with a `.svg` extension. The SVG should be square and may be scaled by Launch.

* `author` (required)

  The "author" is an object which should be structured as follows:

  * `name` (required)

    The name of the extension author. Alternatively, the company name can be used here.

  * `url` (optional)

    A URL where you can find out more about the extension author.

  * `email` (optional)

    The email address of the extension author.

  This is consistent with [npm author field](https://docs.npmjs.com/files/package.json#people-fields-author-contributors) rules.

* `exchangeUrl` (required for public extensions)

  The URL to your extension's listing on Adobe Exchange. It must match the pattern `https://www.adobeexchange.com/experiencecloud.details.######.html`.

* `viewBasePath` (required)

  The relative path to the subdirectory containing all your views and view-related resources (HTML, JavaScript, CSS, images). Launch will host this directory on a web server and load iframe content from it. This is a required field and should not start with a slash. For example, if all your views are contained within `src/view/`, the value of `viewBasePath` would be `src/view/`.

* `configuration` (optional)

  This describes the [extension configuration](../extension-configuration) portion of the extension. This is necessary if you need users to provide global settings for the extension. The configuration object should be structured as follows:

  * `viewPath` (required)

    The relative URL to the extension configuration view. It should be relative to `viewBasePath` and should not begin with a slash. It must reference an HTML file with a `.html` extension. Query string and fragment identifier (hashes) suffixes are acceptable.

  * `schema` (required)

    An object of [JSON Schema](http://json-schema.org/) describing the format of a valid object being saved from the extension configuration view. Since you are the developer of the configuration view, it is your responsibility to ensure that any settings object saved matches this schema. This schema will also be used for validation when users attempt to save data using Launch services.

    An example schema object is as follows:

    ```json
    {
      "$schema": "http://json-schema.org/draft-04/schema#",
      "type": "object",
      "properties": {
        "delay": {
          "type": "number",
          "minimum": 1
        }
      },
      "required": [
        "delay"
      ],
      "additionalProperties": false
    }
    ```

    We recommend using a tool like [JSON Schema validator](http://www.jsonschemavalidator.net/) to manually test your schema.

  * `transforms` (optional)

    An array of objects where each object represents a transformation that should be performed on every corresponding settings object when it is emitted into the runtime library. See the [Transforming Settings Objects](#transforming-settings-objects) section for more information on why this may be needed and how it is used.

* `conditions` (optional)

  An array of [condition](../condition-types) type definitions. See the [type definition](#type-definition) section for the structure of each object in the array.

* `actions` (optional)

  An array of [action](../action-types) type definitions. See the [type definition](#type-definition) section for the structure of each object in the array.

* `dataElements` (optional)

  An array of [data element](../data-element-types) type definitions. See the [type definition](#type-definition) section for the structure of each object in the array.

## Type Definition

A type definition is an object used to describe an event, condition, action, or data element type. The object consists of following:

* `name` (required)

  The name of the type. This must be a unique name within the extension. The name must comply with [naming rules](#naming-rules). **This is used by Launch as an identifier and should not be changed after you publish your extension.**

* `displayName` (required)

  The text that will be used to represent the type within the Launch user interface. It should be human-readable.

* `categoryName` (optional)

  When provided, the `displayName` will be listed under the `categoryName` within the Launch UI. All types with the same `categoryName` will be listed under the same category. For example, if your extension provided a `keyUp` event type and a `keyDown` event type and they both had a `categoryName` of `Keyboard`, both event types would be listed under the Keyboard category while the user is selecting from the list of available event types when building a rule. The value of `categoryName` should be human-readable.

* `libPath` (required)

  The relative path to the type's library module. It should not not begin with a slash. It must reference a JavaScript file with a `.js` extension.

* `viewPath` (optional)

  The relative URL to the type's view. It should be relative to `viewBasePath` and should not begin with a slash. It must reference an HTML file with a `.html` extension. Query strings and fragment identifiers (hashes) are acceptable. If your type's library module does not use any settings from a user, you may exclude this property and Launch will instead display a placeholder stating that no configuration is necessary.

* `schema` (required)

  An object of [JSON Schema](http://json-schema.org/) describing the format of a valid settings object that can be saved by the user. Settings are usually configured and saved by a user using the Launch user interface. In these cases, the extension's view can take necessary steps to validate user-provided settings. On the other hand, some users choose to use Launch APIs directly without the aid of any user interface. The purpose of this schema is to allow Launch to properly validate that settings objects saved by users, regardless of whether a user interface is used, are in a format that is compatible with the library module that will act upon the settings object at runtime.

  An example schema object is as follows:

  ```json
  {
    "$schema": "http://json-schema.org/draft-04/schema#",
    "type": "object",
    "properties": {
      "delay": {
        "type": "number",
        "minimum": 1
      }
    },
    "required": [
      "delay"
    ],
    "additionalProperties": false
  }
  ```

  We recommend using a tool like [JSON Schema validator](http://www.jsonschemavalidator.net/) to manually test your schema.

* `transforms` (optional)

  An array of objects where each object represents a transformation that should be performed on every corresponding settings object when it is emitted into the runtime library. See the [Transforming Settings Objects](#transforming-settings-objects) section for more information on why this may be needed and how it is used.

## Transforming Settings Objects

For certain specific use cases, extensions need the settings objects saved from a view to be transformed by Launch before they are emitted into the Launch runtime library. You may request that one or more of these transformations take place by setting the `transforms` property when defining a type definition within your `extension.json`. The `transforms` property is an array of objects where each object represents a transformation that should take place.

All transforms require a `type` and a `propertyPath`. The `type` must be one of `function`, `remove`, and `file` and describes which transform Launch should apply to the settings object. The `propertyPath` is a period-delimited string that tells Launch where to find the property that needs to be modified within the settings object. Here is an example settings object and some `propertyPath`s:

```json
{
  foo:
    bar: "A string"
    baz: [
      "A",
      "B",
      "C"
    ]
}
```

If we set a `propertyPath` of `foo.bar` we would transform the `"A string"` value.

If we set a `propertyPath` of `foo.baz[]` we would transform each value in the `baz` array.

If we set a `propertyPath` of `foo.baz` we would transform the `baz` array.

Property Path's can use any combination of array and object notation to apply transforms at any level of the settings object.

{% alert warning, Sandbox Support %}
Using array notation in the `propertyPath` attribute (e.g. `foo.baz[]`) is *not yet supported in the extension sandbox* tool.
{% endalert %}

Below are the available transformations and how to use them.

### Function Transform

The function transform allows code written by Launch users to be executed by a library module within the emitted Launch runtime library.

Let's assume we would like to provide a "custom script" action type. The "custom script" action view might provide a textarea wherein the user can enter some code. Let's assume a user entered the following code into the textarea:

`console.log('Welcome, ' + username +'. This is ZomboCom.');`

When the user saves the rule, the settings object saved by the view may look like this:

```json
{
  foo: {
    bar: "console.log('Welcome, ' + username +'. This is ZomboCom.');"
  }
}
```

When a rule using our action fires within the Launch runtime library, we would like to execute the user's code and pass it a username.

At the point that the settings object is saved from the action type's view, the user's code is simply a string. This is good because it can be properly serialized to and from JSON; however, it's also bad because it would typically be emitted in the Launch runtime library as a string as well instead of an executable function. Although you could attempt to execute the code within your action type's library module using [`eval`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval) or a [Function constructor](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function), it is highly discouraged due to [content security policies](https://developer.mozilla.org/en-US/docs/Web/Security/CSP) potentially blocking execution.

As a workaround for this situation, using the function transform tells Launch to wrap the user's code in a executable function when it is emitted in the Launch runtime library. To solve our example problem, we would define the transform on the type definition in `extension.json` as follows:

```json
{
  ...
  "transforms": [
    {
      "type": "function",
      "propertyPath": "foo.bar",
      "parameters": ["username"]
    }
  ]
  ...
}
```

`type` defines the type of transform that should be applied to the settings object.

`propertyPath` is a period-delimited string that tells Launch where to find the property that needs to be modified within the settings object.

`parameters` is an array of parameter names that should be included in the wrapping function's signature.

When the settings object is emitted in the Launch runtime library, it will be transformed to the following:

```json
{
  foo: {
    bar: function(username) {
      console.log('Welcome, ' + username +'. This is ZomboCom.');
    }
  }
}
```

Your library module can then call the function containing the user's code and pass in the `username` argument.

### Remove Transform

By default, all the properties of the settings object are emitted in the Launch runtime library. If certain properties are only used for the extension view, especially if they contain sensitive information (eg. secret token), you should use the remove transform to prevent the information from being emitted into the Launch runtime library.

Let's assume we would like to provide a new action type. The action type's view might provide an input wherein the user can enter a secret key that will allow connection to a specific API. Let's assume a user entered the following text into the input:

`ABCDEFG`

When the user saves the rule, the settings object saved by the view may look like this:

```json
{
  foo: {
    bar: "ABCDEFG"
  }
}
```

We would like to not include the property `bar` inside in the Launch runtime library. To solve our example problem, we would define the transform on the action type definition in `extension.json` as follows:

```json
{
  ...
  "transforms": [
    {
      "type": "remove",
      "propertyPath": "foo.bar"
    }
  ]
  ...
}
```

`type` defines the type of transform that should be applied to the settings object.

`propertyPath` is a period-delimited string that tells Launch where to find the property that needs to be modified within the settings object.

When the settings object is emitted in the Launch runtime library, it will be transformed to the following:

```javascript
{
  foo: {
  }
}
```

In this case, the value of `foo.bar` has been removed from the settings object.

## Naming Rules

The value of any `name` field within `extension.json` must comply with the following rules:

* Must be less than or equal to 214 characters
* Must not start with a dot or an underscore
* Must not contain uppercase letters
* Must only contain URL-safe characters

These are consistent with [npm package name](https://docs.npmjs.com/files/package.json#name) rules.
