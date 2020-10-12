---
title: Condition Types
order: 9
---

# Condition Types

A condition type library module has one goal: evaluate whether something is true or false. What it evaluates is up to you.

Let's assume we wish to evaluate whether the user is on the host `adobelaunch.com`. Our module may look like this:

```javascript
module.exports = (settings, arc) => {
  const {
    event: {
      xdm: {
        web: {
          webpageDetails: { URL },
        },
      },
    },
  } = arc;
  return URL.endsWith("adobelaunch.com");
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
module.exports = (settings, arc) => {
  const {
    event: {
      xdm: {
        web: {
          webpageDetails: { URL },
        },
      },
    },
  } = arc;
  return URL.endsWith(settings.hostname);
};
```

## Condition Result

The result returned by a condition module can be:

1. A boolean value: `true` or `false`.
2. A [Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) that returns a boolean value once resolved.

## Adobe Request Context

Adobe Request Context (arc) contains multiple properties. You can learn more [here](../arc).

## Utils

Multiple utilities function are made available to all the modules. You can learn more [here](../utils).
