---
title: Action Types
order: 10
---

# Action Types

An action type library module is intended to take an action--any action. What this action does is entirely up to you. Do you want to send a beacon, transform some data from the event?

Let's assume we want to forward some data to a 3rd party endpoint. Our module may look like this:

```javascript
module.exports = (settings, arc, utils) {
  const { fetch } = utils;
  const { event: { xdm } } = arc;
  return fetch('http://someendpoint.com', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(xdm)
  })
};
```

Now what if we wanted to make the endpoint configurable by the Launch user? In our view we would allow the user to input an endpoint and then save the message to the settings object. The object might look something like this:

```javascript
{
  "endpoint": "http://someendpoint.com"
}
```

In order to operate on the user-defined endpoint, our module would need to change to this:

```javascript
module.exports = (settings, arc, utils) {
  const { fetch } = utils;
  const { event: { xdm } } = arc;
  const  { endpoint } = settings;

  return fetch('endpoint', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(xdm)
  })
};
```

## Action Result

The result returned by a action module can be anything. If the action needs to execute an async task, you can return a [Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) that returns whatever result you want once the promise is resolved.

The action result is stored inside `ruleStash` key that is made available to all the modules through the Adobe Request Context (arc). You can learn more about `ruleStash` [here](../arc#arcrulestash-objectstring-).

## Adobe Request Context

Adobe Request Context (arc) contains multiple properties. You can learn more [here](../arc).

## Utils

Multiple utilities function are made available to all the modules. You can learn more [here](../utils).
