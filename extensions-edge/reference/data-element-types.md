---
title: Data Element Types
order: 11
---

# Data Element Types

A data element type library module has one goal: retrieve a piece of data. How this piece of data is retrieved is up to you. Perhaps you would like to allow Launch users to retrieve a piece of data from the XDM? Or from their custom data layer?

The module exports should look like this:

```javascript
module.exports = (settings, arc, utils) => { ... };
```

Let's assume that we would like to allow users to retrieve a piece of data from the custom data layer. Our module may look like this:

```javascript
module.exports = (settings, arc, utils) => {
   const {
    event: {
      data: {
        productName
      }
    }
  } = arc;

  return productName;
}
```

Now what if we wanted to make the data returned from the data layer configurable by the Launch user? In our view we would allow the user to input a key name and then save the name to the settings object. The object might look something like this:

```javascript
{
  keyName: "campaignId"
}
```

In order to operate on the user-defined local storage item name, our module would need to change to this:

```javascript
module.exports = (settings, arc, utils) => {
     const {
    event: {
      data
    }
  } = arc;

  return data[keyName];
}
```

## Default Value Support

Be aware that users have the option to configure a default value for any data element. If your data element library module returns a value of `undefined` or `null`, it will be automatically replaced by the default value the user has configured for the data element.

## Adobe Request Context

Adobe Request Context (arc) contains multiple properties. You can learn more [here](../arc).

## Utils

Multiple utilities function are made available to all the modules. You can learn more [here](../utils).
