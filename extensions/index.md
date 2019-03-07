---
title: Overview
---

# Extensions Overview

## What Is An Extension?

One of the primary goals of Reactor is to create an open ecosystem where engineers outside of the core Launch engineering team can expose additional functionality through Launch. This is done through Reactor extensions. Once an extension has been installed on a Launch property by a user, that extension's functionality then becomes available for use by all users of the property.

The primary components of an extension include the following:

### Event Types

A rule event is some activity that must occur before a rule fires.

As an example, an extension could provide a "gesture" event type that watches for a certain mouse or touch gesture to occur. Once the gesture occurs, the event logic would fire the rule.

Event types typically consist of (1) a view shown within the Launch application that allows users to modify settings for the event and (2) a library module emitted within the Launch runtime library to interpret the settings and watch for a certain activity to occur.

[Learn more](reference/event-types)

### Condition Types

A rule condition is evaluated after a rule event has occurred. All conditions must return true in order for the rule to continue processing. The exception is when users explicitly place conditions into an "exception" bucket in which case all conditions within the bucket must return false for the rule to continue processing.

As an example, an extension could provide a "viewport contains" condition type wherein the Launch user could specify a CSS selector. When the condition is evaluated on the client's website, the extension would be able to find elements matching the CSS selector and return whether any of them are contained within the user's viewport.

Condition types typically consist of (1) a view shown within the Launch application that allows users to modify settings for the condition and (2) a library module emitted within the Launch runtime library to interpret the settings and evaluate a condition.

[Learn more](reference/condition-types)

### Action Types
A rule action is something that is performed after the rule event has occurred and conditions have passed evaluation.

As an example, an extension could provide a "show support chat" action type which could display a support chat dialog to help users who may be struggling while checking out.

Action types typically consist of (1) a view shown within the Launch application that allows users to modify settings for the action and (2) a library module emitted within the Launch runtime library to interpret the settings and perform an action.

[Learn more](reference/action-types)

### Data Element Types

Data elements are essentially aliases to pieces of data on a page regardless of whether that data is found in query string parameters, cookies, DOM elements, or some other place. A data element can be referenced by rules and acts as an abstraction for accessing these pieces of data. When the location of the data changes in the future (for example, from a DOM element's `innerHTML` to a JavaScript variable's value), a single data element can be reconfigured while all the rules referencing that data element can remain unchanged.

A data element type enables users to configure data elements to access a piece of data in a particular way. As an example, an extension could provide a "local storage item" data element type wherein the Launch user could specify a local storage item name. When the data element is referenced by a rule, the extension would be able to look up the local storage item value by using the local storage item name that the user had provided when configuring the data element.

Data element types typically consist of (1) a view shown within the Launch application that allows users to modify settings for the data element and (2) a library module emitted within the Launch runtime library to interpret the settings and retrieve pieces of data.

[Learn more](reference/data-element-types)

### Extension Configuration

Extension configuration is the manner by which an extension gathers global settings from a user. For example, consider an extension that allows the user to send a beacon using a Send Beacon action and the beacon must always contain an account ID. We don't want to trouble users by asking them for the account ID each time they configure a Send Beacon action. Instead, the extension should ask for the account ID once from the extension configuration view. Each time a beacon is to be sent, the Send Beacon action library module can pull the account ID from the extension configuration and add it to the beacon.

When users install an extension to a Launch property, they will be shown the extension configuration view. They cannot complete installation of the extension without completing extension configuration.

Extension configuration consists of a view component which will export settings that are then emitted within the Launch runtime library as a plain object.

[Learn more](reference/extension-configuration)

### Shared Modules

These are library modules that are emitted within the Launch runtime library. A shared module is a module exposed by one extension to be accessed by another. This can be a very useful mechanism for communicating between extensions. For example, Extension A may load a piece of data asynchronously and make it available to Extension B via a [promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise).

Shared modules are included in the library even when they are never called from inside other extensions. In order to not increase the library size unnecessarily, you should be careful about what you expose as a shared module.

Shared modules do not have a view component.

[Learn more](reference/shared-modules)

## Extension Structure

An extension consists of a directory of files. An overview of how these files should be structured is as follows. Details on file content can be found in other sections.

An [`extension.json`](reference/extension-manifest) file must exist at the root of the directory. This file will, among other things, describe the makeup of the extension and where certain files are located within the directory. This has some similarities to a [`package.json`](https://docs.npmjs.com/files/package.json) file in [npm](https://www.npmjs.com/).

Each library module (the logic to be emitted within the Launch runtime library) must be its own file whose content follows the [CommonJS module standard](http://wiki.commonjs.org/wiki/Modules/1.1.1). For example, if we're building a "gesture" event type, we must have a file that contains the logic that detects user gestures. The content of this file will be emitted within the Launch runtime library. You might call it `gesture.js`. The location of the file in the directory is not important since `extension.json` will describe where it is located.

Each view must be an HTML file capable of being loaded into an iframe within the Launch application. The view must include a Launch-provided script and conform to a small API in order to communicate with the Launch application. There are no restrictions as to what libraries are used within your views. In other words, you may use jQuery, Underscore, React, Angular, Bootstrap or other libraries. We do, however, hope that you will make your extension have a similar look and feel to the Launch application.

It is recommended that you put all view-related files (HTML, CSS, JavaScript) within a single subdirectory that is isolated from the library module files. In `extension.json` you will describe where this view subdirectory is located. Launch will then serve this subdirectory (and only this subdirectory) from its web servers.
