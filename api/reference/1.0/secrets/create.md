---
title: Create
---

# Create a Secret

Add a Secret to a Property.

When you create a new secret, you will get an immediate response that contains information for that resource.

At the same time, a secret exchange task is triggered to test that the credential exchange is functional.  This task is processed asynchronously and updates the secret's `status` attribute with one of two possible values:

#### `succeeded`

This is the status when the exchange request for the secret completes successfully.

#### `failed`

This is the status when the exchange request for the secret is not successful.

{% form secret.post %}

## Secret types

### "oauth2" `type_of`

{% include_relative _oauth2.html %}

### "simple-http" `type_of`

{% include_relative _simple-http.html %}

### "token" `type_of`

{% scenario secrets.create %}
