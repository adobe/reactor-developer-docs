---
title: Extension Configuration
order: 7
---

# Extension Configuration

Extension configuration is the manner by which an extension gathers global settings from a user. For example, consider an extension that allows the user to send a beacon using a Send Beacon action, and the beacon must always contain an account ID. We don't want to trouble users by asking them for the account ID each time they configure a Send Beacon action. Instead, the extension should ask for the account ID once from the extension configuration view. Each time a beacon is to be sent, the Send Beacon action library module can pull the account ID from the extension configuration and add it to the beacon.

When users install an extension to a Launch property, they will be shown the extension configuration view which your extension will provide. They cannot complete installation of the extension without completing extension configuration. See [Views](../views) to learn how to create a view for extension configuration.

After settings are saved from an extension configuration view, they will be emitted in the Launch runtime library. You can then access these settings from extension library modules by accessing the `extensionSettings` property from the [`Adobe Request Context (arc)`](../arc/#extensionsettings--) variable.

Extension configuration is an optional feature that you may choose not to leverage.
