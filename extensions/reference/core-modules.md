---
title: Core Modules
order: 16
---

# Core Modules

This is a list of core modules that you may use within your library modules. You may access these modules using `require('@adobe/reactor-name-of-module')`. We try to limit core modules to those we feel will be useful across extensions in order to not cause unnecessary bloat.

### @adobe/reactor-object-assign

#### `objectAssign(target: Object, ...sources: Object[]) => Object`

```javascript
var objectAssign = require('@adobe/reactor-object-assign');
var all = objectAssign({ a: 'a' }, { b: 'b' });
```

Mimics the native [`Object.assign`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign) by copying properties from source objects to a target object.

### @adobe/reactor-cookie

#### `cookie: Object`

```javascript
var cookie = require('@adobe/reactor-cookie');
cookie.set('foo', 'bar');
console.log(cookie.get('foo'));
cookie.remove('foo');
```

A utility for reading and writing cookies. See the [js-cookie npm package](https://www.npmjs.com/package/js-cookie) for more information.

### @adobe/reactor-document

#### `document: Object`

```javascript
var document = require('@adobe/reactor-document');
console.log(document.location);
```

The [`document`](https://developer.mozilla.org/en-US/docs/Web/API/Document) object. This can be beneficial when testing the module by allowing tests to inject a mock `document` object using utilities like [`inject-loader`](https://www.npmjs.com/package/inject-loader).

### @adobe/reactor-query-string

#### `queryString: Object<string, Function>`

```javascript
var queryString = require('@adobe/reactor-query-string');
var parsed = queryString.parse(location.search);
console.log(parsed.campaign);
var obj = {
  campaign: 'Black Friday'
};
var stringified = queryString.stringify(obj);
```

A utility for parsing and serializing [query strings](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils/search). The utility has the following methods:

* `queryString.parse(string: String)`

  Parses a query string into an object. Leading `?`, `#`, and `&` characters on the query string are ignored.

* `queryString.stringify(object: Object)`

  Stringifies an object into a query string.

### @adobe/reactor-load-script

#### `loadScript(url: string) => Promise`

```javascript
var loadScript = require('@adobe/reactor-load-script');
var url = 'http://code.jquery.com/jquery-3.1.1.js';
loadScript(url).then(function() {
  // Do something ...
})
```

Loads a script when given a URL. A script tag will be created and placed within the `head` node of the document. A [promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) will be returned which you may use to determine when loading of the script succeeds or fails.

### @adobe/reactor-promise

#### `Promise: Constructor`

```javascript
var Promise = require('@adobe/reactor-promise');
new Promise(function(resolve) {
  resolve();
}, function(err) {
  console.error(err);
});
```

A constructor that mimics the [Promise API](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) native in ECMAScript 6. If the native Promise API is available, it will be returned instead.

### @adobe/reactor-window

#### `window: Object`

```javascript
var window = require('@adobe/reactor-window');
console.log(window.document);
```

The [`window`](https://developer.mozilla.org/en-US/docs/Web/API/Window) object. This can be beneficial when testing the module by allowing tests to inject a mock `window` object using utilities like [`inject-loader`](https://www.npmjs.com/package/inject-loader).
