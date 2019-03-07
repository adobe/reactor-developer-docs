---
title: Library Module Format
order: 6
---

# Library Module Format

A library module is a piece of reusable code provided by an extension that is emitted inside the Launch runtime library (the library that runs on the client's website). For example, a `gesture` event type will have a library module that will run on the client's website and detects user gestures.

The library module is structured as a [CommonJS module](http://wiki.commonjs.org/wiki/Modules/1.1.1). Within a CommonJS module, the following variables are available for usage:

### require

A `require` function is available for you to access:

1. Core modules provided by Launch. These modules may be accessed by using `require('@adobe/reactor-name-of-module')`. The list of core modules can be found in the [Core Modules](../core-modules) section.
2. Other modules within your extension. Any module in your extension can be accessed via a relative path. The relative path must begin with `./` or `../`.

Example usage:

```javascript
var cookie = require('@adobe/reactor-cookie');
cookie.set('foo', 'bar');
```

### module

A free variable named `module` is available which allows you to export the module's API.

Example usage:

```javascript
module.exports = function(…) { … }
```

### exports

A free variable named `exports` is available which allows you to export the module's API.

Example usage:

```javascript
exports.sayHello = function(…) { … }
```

This is an alternative to `module.exports` but is more limited in its usage. Please read [Understanding module.exports and exports in node.js](https://www.sitepoint.com/understanding-module-exports-exports-node-js/) for a better understanding of the differences between `module.exports` and `exports` and the related caveats with using `exports`. When in doubt, make your life easier and use `module.exports` rather than `exports`.

## Execution And Caching

When the Launch runtime library runs, modules will be immediately "installed" and their exports cached. Assuming the following module:

```javascript
console.log('runs on startup');

module.exports = function(settings) {
  console.log('runs when necessary');
}
```

`runs on startup` will be logged immediately whereas `runs when necessary` will only be logged once the exported function is called by the Launch engine. While it may be unnecessary for the purpose of your particular module, you may take advantage of this by performing any setup necessary before exporting the function.
