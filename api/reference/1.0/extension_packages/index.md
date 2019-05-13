---
title: Overview
labels:
  - unstable
---

# ExtensionPackages

{% labels %}

An `ExtensionPackage` represents a packaged extension as authored by an extension developer. An extension package defines additional capabilities that can be made available to Launch users.  Most commonly these capabilities come in the form of `RuleComponents` (events, conditions, and actions) and `DataElements`, but can also include main modules and shared modules.

`ExtensionPackages` are displayed in the Launch catalog for users to install.  Adding an `ExtensionPackage` to a property is accomplished by creating an `Extension` with a link to the `ExtensionPackage`.

An extension package belongs to the `Company` of the developer who created it.

## Status

An `ExtensionPackage` status may be one of the following values.

#### `pending`

When an `ExtensionPackage` is created, `status` is set to `pending`.  This indicates that Launch received the information for the extension package and will begin processing.

`ExtensionPackages` with a `status` of `pending` are not available for use.

#### `succeeded`

When processing of the `ExtensionPackage` has completed, if processing was successful, the status will change to `succeeded`.

#### `failed`

When processing of the `ExtensionPackage` has completed, if processing was unsuccessful, the status will change to `failed`. An `ExtensionPackage` with a `status` of `failed` may be updated until processing succeeds.

`ExtensionPackages` with a `status` of `failed` are not available for use.

## Availability

`ExtensionPackages` have an `availability` attribute that represents its visibility and availability for use.

An `ExtensionPackage` `availability` may be one of the following values.

#### `development`

An extension package in `development` is only visible to, and available within, the `Company` that owns it, and `Properties` which are configured for extension development.

#### `private`

A `private` `ExtensionPackage` is only visible to, and available for installation on a `Property` within the `Company` that owns it.

#### `public`

A `public` `ExtensionPackage` is visible and available to all `Companies` and `Properties`.

When an `ExtensionPackage` is created, `availability` is set to `development`. After testing has been completed, you can transition the `ExtensionPackage` to either `private` or `public`.