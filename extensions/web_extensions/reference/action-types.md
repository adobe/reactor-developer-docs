---
title: Action Types
order: 10
---

# Action Types

An action type library module is intended to take an action--any action. What this action does is entirely up to you. Do you want to send a beacon, show an offer, thank the user for visiting, save a cookie, or open a support chat?

Let's assume we want to show an alert thanking the user for visiting our site. Our module may look like this:

```javascript
module.exports = function(settings) {
  alert('Thanks for visiting our site!');
};
```

Now what if we wanted to make the message configurable by the Launch user? In our view we would allow the user to input a message and then save the message to the settings object. The object might look something like this:

```javascript
{
  "message": "Thank you for being one of our VIP members!"
}
```

In order to operate on the user-defined message, our module would need to change to this:

```javascript
module.exports = function(settings) {
  alert(settings.message);
}
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
