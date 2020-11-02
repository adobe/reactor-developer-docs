---
title: Library Module Context Parameter
order: 15
---

# Library Module Context

All library modules are provided a `context` variable when they are executed. The structure of the `context` variable is the following:

## Adobe Request Context (arc)

The `arc` property represents an object that provides information about the event triggering the rule. It contains the following properties:

### `context.arc.event: Object<string, *>`

```javascript
logger.log(context.arc.event);
```

The event that triggered the rule. The object will contain the following values:

* `rule.xdm: string`

  The XDM object of the event.

* `rule.data: string`

  The custom data layer.

### `context.arc.request: Object<string, *>`

```javascript
logger.log(context.arc.request);
```

The request that travels through the Adobe Edge Network that will finnaly be processed by the edge server. This object is not intended for public consumption and will not be detailed inside the documentation.

### `context.arc.ruleStash: Object<string, *>`

```javascript
logger.log(context.arc.ruleStash);
```

`ruleStash` is an object that will collect every result from action modules.

Each extension has its own namespace. For example, if your extension has the name `send-beacon`, all the results from the `send-beacon` actions will be stored on the `ruleStash['send-beacon']` namespace.

The namespace is unique for each extension and it has the value `undefined` at the beginning.

The namespace will be overridden with the returned result from each action. There is no namespace magic happening. Let's say we have a `transform` extension containing two actions: `generate-fullname` and `generate-fulladdress`. Let's say we add the two actions to a rule.

If the result of `generate-fullname` action is `Firstname Lastname`, then the rule stash will appear as follows after the action is completed:

```json
{
  transform: 'Firstname Lastname`
}
```

If the result of the `generate-address` action is `3900 Adobe Way`, then the rule stash will appears as follows after the action is completed:

```json
{
  transform: '3900 Adobe Way`
}
```

Notice that "Firstname Lastname" no longer exists within the rule stash, because the generate-address action overrode it with the address.

If you want to store the results from both actions inside the `transform` namespace in the `ruleStash` you can write your action module similar to the following example:

```javascript
module.exports = (context) => {
  let transformRuleStash = context.arc.ruleStash.transform;

  if (!transformRuleStash) {
    transformRuleStash = {};
  }

  transformRuleStash.fullName = 'Firstname Lastname';

  return transformRuleStash;
}
```

The first time this action is executed, the `ruleStash` will be `undefined` and we initialize it with an empty object. The next time when the action is executed, we will get the `ruleStash` returned by our action when it was previously called. Using an object as `ruleStash`, allows us to add new data without losing data previously set by other actions from our extension.

You need to be careful to always return the full extension rule stash in this case. If you were to return only a value (eg: 5), then the rule stash would look like:

```json
{
  transform: 5
}
```

## Utilities

The `utils` property represents an object that provides utilities specific to the Launch runtime.

### `context.utils.logger: Object<string, Function>`

```javascript
context.utils.logger.error('Error!');
```

Logging utility used to log messages that will be shown during debugging session when using the [Adobe Experience Cloud Debugger](https://chrome.google.com/webstore/detail/adobe-experience-cloud-de/ocdmogmohccmeicdhlhhgepeaijenapj?src=propaganda) Chrome extension. The logger has the following methods:

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

### `context.utils.fetch: Function`

```javascript
context.utils.fetch('http://example.com/movies.json')
  .then(response => response.json())
```

Fetch utility that implements [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API). You can use the function to make requests to third-party endpoints.

### `context.utils.getBuildInfo: Function`

```javascript
logger.log(context.utils.getBuildInfo().turbineBuildDate);
```

A function that returns an object containing information about the build of the current Launch runtime library. The object will contain the following values:

* `buildInfo.turbineVersion: string`

  The [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine-edge) version used inside the current library.

* `buildInfo.turbineBuildDate: string`

  The ISO 8601 date when the version of [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine-edge) used inside the container was built.

* `buildInfo.buildDate: string`

  The ISO 8601 date when the current library was built.

* `buildInfo.environment: string`

  The environment for which this library was built. The possible values are: 'development', 'staging', 'production.'

This is an example demonstrating the object values that are returned by the `getBuildInfo` function:

```json
{
    turbineVersion: "1.0.0",
    turbineBuildDate: "2016-07-01T18:10:34Z",
    buildDate: "2016-03-30T16:27:10Z",
    environment: "development"
}
```

### `context.utils.getExtensionSettings => Function`

```javascript
logger.log(context.utils.getExtensionSettings());
```

Returns the settings object that was last saved from the [extension configuration](../extension-configuration) view.

### `context.utils.getSettings => Function`

```javascript
logger.log(context.utils.getSettings());
```

Returns the settings object that was last saved from the library module corresponding view.

### `context.utils.getRule: Function`

```javascript
logger.log(context.utils.getRule());
```

Returns an object containing information about the rule that is triggering the module. The object will contain the following values:

* `rule.id: string`

  The rule ID.

* `rule.name: string`

  The rule name.
