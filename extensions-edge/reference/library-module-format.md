---
title: Library Module Format
order: 6
---

# Library Module Format

A library module is a piece of reusable code provided by an extension that is emitted inside the Launch runtime library (the library that runs on the edge node). For example, a `sendBeacon` action type will have a library module that will run on the edge node and send a beacon.

The library module is structured as a [CommonJS module](http://wiki.commonjs.org/wiki/Modules/1.1.1). Within a CommonJS module, the following variables are available for usage:

### require

A `require` function is available for you to access other modules within your extension. Any module in your extension can be accessed via a relative path. The relative path must begin with `./` or `../`.

Example usage:

```javascript
var transformHelper = require('../helpers/transform');
transformHelper.execute({a: 'b'});
```

### module

A free variable named `module` is available which allows you to export the module's API.

Example usage:

```javascript
module.exports = (…) => { … }
```

### exports

A free variable named `exports` is available which allows you to export the module's API.

Example usage:

```javascript
exports.sayHello = (…) => { … }
```

This is an alternative to `module.exports` but is more limited in its usage. Please read [Understanding module.exports and exports in node.js](https://www.sitepoint.com/understanding-module-exports-exports-node-js/) for a better understanding of the differences between `module.exports` and `exports` and the related caveats with using `exports`. When in doubt, make your life easier and use `module.exports` rather than `exports`.

### Launch Server Side modules signature

All the modules types ([data elements](../data-element-types), [conditions](../condition-types) or [actions](../action-types)) provided by the extensions will be called with the same parameters: settings, [arc](../arc), [utils](../utils).

```javascript
exports.sayHello = (settings, arc, utils) => { … }
```