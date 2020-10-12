---
title: Adobe Request Context
order: 15
---

# Adobe Request Context (arc)

The `arc` object is a "variable" accessible inside your extension's library modules. It provides information and utilities specific to the Launch runtime and is always available as the 2nd parameter when your module is executed.

### `arc.buildInfo: Object<string, string>`

```javascript
logger.log(arc.buildInfo.turbineBuildDate);
```

An object containing information about the build of the current Launch runtime library. The object will contain the following values:

* `buildInfo.turbineVersion: string`

  The [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine-edge) version used inside the current library.

* `buildInfo.turbineBuildDate: string`

  The ISO 8601 date when the version of [Turbine](https://www.npmjs.com/package/@adobe/reactor-turbine-edge) used inside the container was built.

* `buildInfo.buildDate: string`

  The ISO 8601 date when the current library was built.

* `buildInfo.environment: string`

  The environment for which this library was built. The possible values are: 'development', 'staging', 'production.'

This is an example demonstrating the object values.

```json
{
    turbineVersion: "1.0.0",
    turbineBuildDate: "2016-07-01T18:10:34Z",
    buildDate: "2016-03-30T16:27:10Z",
    environment: "development"
}
```

### `arc.extensionSettings => *`

```javascript
logger.log(arc.extensionSettings);
```

Returns the settings object that was last saved from the [extension configuration](../extension-configuration) view.

### `arc.rule: Object<string, string>`

```javascript
logger.log(arc.rule);
```

An object containing information about the rule that is triggering the module. The object will contain the following values:

* `rule.id: string`

  The rule ID.

* `rule.name: string`

  The rule name.

### `arc.event: Object<string, *>`

```javascript
logger.log(arc.event);
```

The event that triggered the rule. The object will contain the following values:

* `rule.xdm: string`

  The XDM object of the event.

* `rule.data: string`

  The custom data layer.

### `arc.request: Object<string, *>`

```javascript
logger.log(arc.request);
```

The full request received by the edge server. This object is not intended for public consumption and will not be detailed inside the documentation.

### `arc.ruleStash: Object<string, *>`

```javascript
logger.log(arc.ruleStash);
```

`ruleStash` is an object that will collect every result from action modules.

Each extension has its own namespace. For example if you extension has the name `send-beacon`, all the results from the `send-beacon` actions will be stored on `ruleStash['send-beacon']` namespace.

The namespace is unique for each extension and it has the value `undefined` at the beginning.

The namespace will be overrided with the returned result from each action. There is no namespace magic happening. Lets say we have a `transform` extension containing two actions: `generate-fullname` and `generate-fulladdress`. Let's say we add the two actions to a rule.

If the result of `generate-fullname` action is `Firstname Lastname`, when the action execution is completed the rule stash will look like:

```json
{
  transfrom: 'Firstname Lastname`
}
```

If the result of `generate-address` action is `3900 Adobe Way`, when the action execution is completed the rule stash for the `transform` extension will no longer be 'Firstname Lastname`, but:

```json
{
  transfrom: '3900 Adobe Way`
}
```

If you want to store the results from both actions inside the `transform` namespace from the `ruleStash` you can write in your action module something like the following:

```javascript
module.exports = (settings, arc, utils) => {
  let { ruleStash: { transform: transformRuleStash } } = arc;
  if (!transformRuleStash) {
    transformRuleStash = {};
  }

  transformRuleStash['generate-fullname'] = 'Firstname Lastname';

  return transformRuleStash;
}
```

You need to be careful to return always the full extension rule stash in this case. If you would return only a value (eg: 5), then the rulestash will look like:

```json
{
  transfrom: 5
}
```
