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