---
title: Create
---

# Create an Extension

Add an Extension to a Property. Installation is an
asynchronous action. After performing a request to add an Extension to a
Property, an Extension response will be returned with an
`installation_status` of `pending`. When the installation task has
completed, the Extension will be updated based on the success or
failure of the task.

Extensions are processed asynchronously and have an `installation_status`
attribute representing the current status of the Extension installation.
There are three possible `installation_status` values:

#### `pending`

When an Extension is created, `installation_status` is set to `pending`.
This indicates that DTM received the request to make the ExtensionPackage
available as Extension to the specified Property, and will begin the
installation process.

Extensions with an `installation_status` of `pending` are not available
for use.

#### `succeeded`

When processing of the installation request for the Extension has completed,
if the installation was successful, the `installation_status` will change
to `succeeded`.

#### `failed`

When processing of the installation request for the Extension has completed,
if the installation was not successful, the `installation_status` will
change to `failed`.

Extensions with an `installation_status` of `failed` are not available
for use.


## Attributes

{% form extension.create %}

{% scenario extensions.create %}
