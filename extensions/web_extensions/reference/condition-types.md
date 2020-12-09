---
title: Condition Types
order: 9
---

# Condition Types

A condition type library module has one goal: evaluate whether something is true or false. What it evaluates is up to you.

Let's assume we wish to evaluate whether the user is on the host `adobelaunch.com`. Our module may look like this:

```javascript
module.exports = function(settings) {
  return document.location.hostname === 'adobelaunch.com';
};
```

Simple enough. Now what if we wanted to make the hostname configurable by the Launch user? In our view we would allow the user to input a hostname and then save the hostname to the settings object. The object might look something like this:

```javascript
{
  "hostname": "example.com"
}
```

In order to operate on the user-defined hostname, our module would need to change to this:

```javascript
module.exports = function(settings) {
  return document.location.hostname === settings.hostname;
};
```

## Contextual Event Data

A second argument is passed to your module which contains contextual information regarding the event that fired the rule. It may be beneficial in certain cases and can be accessed as follows:

```javascript
module.exports = function(settings, event) {
  // event contains information regarding the event that fired the rule
};
```

The `event` object will contain the following information:

* `event.$type: string`

  The extension name and event name, joined using a period. For example, `youtube.play`.

* `event.$rule: Object`

  An object containing information about the currently executing rule.

  * `event.$rule.id: string`

    The ID of the currently executing rule.

  * `event.$rule.name: string`

    The name of the currently executing rule.

The extension providing the event type that triggered the rule may optionally add any other useful information to this `event` object.
