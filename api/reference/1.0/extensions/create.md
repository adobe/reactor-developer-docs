---
title: Create
---

# Create an Extension

Add an Extension to a Property. After performing a request to add an Extension to a
Property, When the installation task has
completed, the Extension response will be returned based on the success or
failure of the task.

Extensions are processed synchronously and return an `installation_status`
attribute representing the final status of the Extension installation.
There are two possible `installation_status` values:

#### `succeeded`

When processing of the installation request for the Extension has completed,
if the installation was successful, the `installation_status` will be `succeeded`.

#### `failed`

When processing of the installation request for the Extension has completed,
if the installation was not successful, the `installation_status` will
be `failed`.

Extensions with an `installation_status` of `failed` are not available
for use.


{% form extension.post %}

{% scenario extensions.create %}
