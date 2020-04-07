---
title: Turbine Free Variable
order: 15
---

# Turbine Free Variable

The `turbine` object is a "free variable" within the scope of your extension's library modules. It provides information and utilities specific to the Launch runtime and is always available to library modules without using `require()`.

### `turbine.buildInfo: Object<string, string>`

```javascript
console.log(turbine.buildInfo.turbineBuildDate);
```

An object containing information about the build of the current Launch runtime library. The object will contain the following values:

* `buildInfo.turbineVersion: string`

  The [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine) version used inside the current library.

* `buildInfo.turbineBuildDate: string`

  The ISO 8601 date when the version of [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine) used inside the container was built.

* `buildInfo.buildDate: string`

  The ISO 8601 date when the current library was built.

* `buildInfo.environment: string`

  The environment for which this library was built. The possible values are: 'development', 'staging', 'production.'

This is an example demonstrating the object values.

```
{
    turbineVersion: "14.0.0",
    turbineBuildDate: "2016-07-01T18:10:34Z",
    buildDate: "2016-03-30T16:27:10Z",
    environment: "development"
}
```

### `turbine.debugEnabled: boolean`

Whether Launch debugging is currently enabled.

If you are simply attempting to log messages, it's unlikely you will need to use this. Instead, always log messages using `turbine.logger` and Launch will ensure your messages are only printed to the console when Launch debugging is enabled.

### `turbine.getDataElementValue(name: string) => *`

```javascript
console.log(turbine.getDataElementValue(dataElementName));
```

Returns the value of a data element.

### `turbine.getExtensionSettings() => *`

```javascript
var extensionSettings = turbine.getExtensionSettings();
```

Returns the settings object that was last saved from the [extension configuration](../extension-configuration) view.

Please note that values within the returned settings objects may be coming from data elements. Because of this, calling `getExtensionSettings()` at different times may yield different results if the values of the data elements have changed. To get the most up-to-date values, please wait until as late as possible before calling `getExtensionSettings()`.

### `turbine.getHostedLibFileUrl(file: string) => string`

```javascript
var loadScript = require('@adobe/reactor-load-script');
loadScript(turbine.getHostedLibFileUrl('AppMeasurement.js')).then(function() {
  // Do something ...
})
```

The [hostedLibFiles](../extension-manifest/#hostedlibfiles) property can be defined inside the extension manifest in order to host various files along with the Launch runtime library. This module returns the URL where the given library file is hosted.

### `turbine.getSharedModule(extensionName: string, sharedModuleName: string) => *`

```javascript
var mcidInstance = turbine.getSharedModule('adobe-mcid', 'mcid-instance');
```

Retrieves a module which has been shared from another extension. If no matching module is found, `undefined` will be returned. See [Implementing Shared Modules](../shared-modules) for more information regarding shared modules.

### `turbine.logger: Object<string, Function>`

```javascript
turbine.logger.error('Error!');
```

Logging utility used to log messages to the console. Messages will only show in the console if debugging is turned on by the user. The recommended way to turn on debugging is to use the [Adobe Experience Cloud Debugger](https://chrome.google.com/webstore/detail/adobe-experience-cloud-de/ocdmogmohccmeicdhlhhgepeaijenapj?src=propaganda) or the [Launch and DTM Switch](https://chrome.google.com/webstore/detail/adobe-dtm-switch/nlgdemkdapolikbjimjajpmonpbpmipk) Chrome extension. As an alternative, the user can run the following command `_satellite.setDebug(true)` inside the browser development console. The logger has the following methods:

* `logger.log(message:string)`

  Logs a message to the console.

* `logger.info(message: string)`

  Logs an informational message to the console.

* `logger.warn(message: string)`

  Logs a warning message to the console.

* `logger.error(message: string)`

  Logs an error message to the console.

* `logger.debug(message: string)`

  Logs a debug message to the console. (Visible only when `verbose` logging is enabled within your browser console.)

### `turbine.onDebugChanged(callback: Function)`

By passing a callback function into `turbine.onDebugChanged`, Launch will call your callback whenever debugging is toggled. Launch will pass a boolean to the callback function which will be true if debugging was enabled or false if debugging was disabled.

If you are simply attempting to log messages, it's unlikely you will need to use this. Instead, always log messages using `turbine.logger` and Launch will ensure your messages are only printed to the console when Launch debugging is enabled. 

### `turbine.propertySettings: Object`

```javascript
console.log(turbine.propertySettings.domains);
```

An object containing the following settings which are defined by the user for the property of the current Launch runtime library:

* `propertySettings.domains: Array<String>`

  An array of domains that the Launch property covers.

* `propertySettings.undefinedVarsReturnEmpty: boolean`

  Extension developers should not be concerned with this setting.
