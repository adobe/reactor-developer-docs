---
title: Adobe Analytics
---

# Adobe Analytics Shared Modules

The Adobe Analytics extension provides two different shared modules as follows:

## augment-tracker

Before Adobe Analytics sends any beacons, it must initialize the tracker object. The initialization process begins by loading [AppMeasurement](https://marketing.adobe.com/resources/help/en_US/sc/implement/appmeasure_mjs.html), followed by creating a tracker object. The next step in the initialization process is "augmentation". This step gives your extension the opportunity to augment the tracker with anything necessary before any variables have been applied from the Adobe Analytics extension configuration or before any beacons have been sent. In addition, your extension has the opportunity to pause the tracker initialization process while your extension performs any asynchronous task of its own, for example, while your extension is loading data or JavaScript from a server.

Consuming the `augment-tracker` shared module is as follows:

```js
var augmentTracker = turbine.getSharedModule('adobe-analytics', 'augment-tracker');

augmentTracker(function(tracker) {
  // augment tracker in some way
});
```

The function passed into `augmentTracker()` will be called as soon as the augmentation phase of the tracker initialization process is reached.

If your extension needs to complete an asynchronous task before augmenting the tracker, you may return a promise from your function as follows:

```js
var Promise = require('@adobe/reactor-promise');
var augmentTracker = turbine.getSharedModule('adobe-analytics', 'augment-tracker');

augmentTracker(function(tracker) {
  return new Promise(function(resolve) {
    // augment tracker in some way, then call resolve()
  });
});
```

By returning a promise, your extension is signaling to Adobe Analytics that it should pause the tracker initialization process until the promise is resolved. Please be prudent when pausing the tracker initialization process, as it can delay beacons from being sent and therefore result in uncollected data (for example, if the user navigates away from the page before the beacon gets sent).

## get-tracker

If you would like to access the tracker any time after it has been fully initialized, you may do so using the `get-tracker` shared module as follows:

```js
var getTracker = turbine.getSharedModule('adobe-analytics', 'get-tracker');

getTracker().then(function(tracker) {
  // use tracker in some way
});
```

## Verifying that Adobe Analytics has been installed

It's possible that Adobe Analytics has not been installed or included in the same Launch library as your extension. Because of this, it's highly recommended that you check for this case in your code and handle it appropriately. An example is as follows:

```js
var getTracker = turbine.getSharedModule('adobe-analytics', 'get-tracker');

if (getTracker) {
  getTracker().then(function(tracker) {
    // use tracker in some way
  });
} else {
  turbine.logger.error("The Adobe Analytics extension is required for Extension XYZ to function properly.");
}
```

If `getTracker` is `undefined`, the Adobe Analytics does not exist in the Launch library. You can customize the logged message to accurately reflect what functionality may be lost if Adobe Analytics is not installed.
