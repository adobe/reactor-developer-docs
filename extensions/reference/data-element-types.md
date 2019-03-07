---
title: Data Element Types
order: 11
---

# Data Element Types

A data element type library module has one goal: retrieve a piece of data. How this piece of data is retrieved is up to you. Perhaps you would like to allow Launch users to retrieve a piece of data from local storage? A cookie? A DOM element?

The module exports should look like this:

```javascript
module.exports = function(settings) { ... };
```

Let's assume that we would like to allow users to retrieve a piece of data from a local storage item named `productName`. Our module may look like this:

```javascript
module.exports = function(settings) {
  return localStorage.getItem('productName');
}
```

Now what if we wanted to make the local storage item name configurable by the Launch user? In our view we would allow the user to input a local storage item name and then save the name to the settings object. The object might look something like this:

```javascript
{
  itemName: "campaignId"
}
```

In order to operate on the user-defined local storage item name, our module would need to change to this:

```javascript
module.exports = function(settings) {
  return localStorage.getItem(settings.itemName);
}
```

## Default Value Support

Be aware that users have the option to configure a default value for any data element. If your data element library module returns a value of `undefined` or `null`, it will be automatically replaced by the default value the user has configured for the data element.

## Contextual Event Data

If the data element is being retrieved as a result of a rule being triggered (for example, data elements are used in the conditions and actions of the rule), a second argument will be passed to your module which contains contextual information regarding the event that fired the rule. It may be beneficial in certain cases and can be accessed as follows:

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
