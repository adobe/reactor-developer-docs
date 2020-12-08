---
title: Shared Modules
order: 12
---

# Shared Modules

A shared module is a mechanism by which you can communicate with other extensions.

As an example, let's say our extension loads a user ID asynchronously and then shares the user ID with any other extension via a [promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise):

```javascript
var userIdPromise = new Promise(/* load user id, then resolve promise */);
module.exports = userIdPromise;
```

In `extension.json` we will give this shared module a name. Assuming we name it `user-id-promise`, a different extension could then access this shared module as follows:

```javascript
var userIdPromise = turbine.getSharedModule('user-extension', 'user-id-promise');
```

Shared modules can be anything you would typically be able to export from a CommonJS module (e.g., functions, objects, strings, numbers, booleans).
