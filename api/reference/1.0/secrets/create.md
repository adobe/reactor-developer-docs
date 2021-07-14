---
title: Create
---

# Create a Secret

Add a Secret to a Property. After performing a request to add a Secret to a
Property, when the secret exchange task has
completed, the Secret response will be returned based on the success or
failure of the task.

Secrets are processed asynchronously and return an `status`
attribute representing the final status of the Secret exchange.
There are two possible `status` values:

#### `succeeded`

When processing of the exchange request for the Secret has completed,
if the exchange was successful, the `status` will be `succeeded`.

#### `failed`

When processing of the exchange request for the Secret has completed,
if the exchange was not successful, the `status` will
be `failed`.


{% form secret.post %}

{% scenario secrets.create %}
