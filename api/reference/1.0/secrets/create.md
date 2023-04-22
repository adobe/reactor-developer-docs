---
title: Create
labels:
  - unstable
---

# Create a Secret

{% labels %}

Add a Secret to a Property.

When you create a new secret, you will get an immediate response that contains information for that resource.

At the same time, a secret exchange task is triggered to test that the credential exchange is functional.  This task is processed asynchronously and updates the secret's `status` attribute with one of two possible values:

#### `succeeded`

This is the status when the exchange request for the secret completes successfully.

#### `failed`

This is the status when the exchange request for the secret is not successful.

{% form secret.post %}

## Secret types

### "oauth2-client_credentials" `type_of`

{% scenario secrets.create secrets.create_a_oauth2_client_credentials_secret %}

### "oauth2-jwt" `type_of`

{% scenario secrets.create secrets.create_a_oauth2_jwt_secret %}

### "oauth2-google" `type_of`

{% scenario secrets.create secrets.create_a_oauth2_google_secret %}

### "simple-http" `type_of`

{% scenario secrets.create secrets.create_a_simple_http_secret %}

### "token" `type_of`

{% scenario secrets.create secrets.create_a_secret %}
