---
title: Test
---

# Test a Secret

The test operation can only be performed on an `succeeded` `oauth2` Secret. The test operation performs an exchange and includes the authorization service response in the `test_exchange` attribute from the `meta` object.
This operation does not update the secret.

{% include_relative _test.html %}
