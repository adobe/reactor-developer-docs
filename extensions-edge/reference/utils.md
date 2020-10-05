---
title: Utilities
order: 16
---

# Utilities

The `utils` object is a "variable" accessible inside your extension's library modules. It provides utilities specific to the Launch runtime and is always available as the 3rd parameter when your module is executed.

### `utils.logger: Object<string, Function>`

```javascript
utils.logger.error('Error!');
```

Logging utility used to log messages to the console. Messages will be shown during debugging session by using the [Adobe Experience Cloud Debugger](https://chrome.google.com/webstore/detail/adobe-experience-cloud-de/ocdmogmohccmeicdhlhhgepeaijenapj?src=propaganda) Chrome extension. The logger has the following methods:

* `logger.log(message:string)`

  Logs a message to the console.

* `logger.info(message: string)`

  Logs an informational message to the console.

* `logger.warn(message: string)`

  Logs a warning message to the console.

* `logger.error(message: string)`

  Logs an error message to the console.

* `logger.debug(message: string)`

  Logs a debug message to the console. (Visible only when `verbose` logging is enabled within your browser console.)

### `utils.fetch: Function`

```javascript
utils.fetch('http://example.com/movies.json')
  .then(response => response.json())
```

Fetch utility that implements [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API). You can use the function to make requests to 3rd party endpoints.
