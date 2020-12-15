---
title: Overview
labels:
  - unstable
---

# App Configurations

{% labels %}

**The implementation of `App Configurations` are in flux as features are added, removed, and reworked.**

`App Configurations` allow credentials to be stored and retrieved for later use. As of this writing only Customer Journey Management (CJM) can read the decrypted `push_credential`.

`platform` determines what messaging services are available.


`messaging_service` such as Apple's `apns` and Google's `fcm` determines which key types can be used.


`key_type` abstracts a protocol that a push service vendor supports and determines the definition of the `push_credential` object. As protocols evolve for the messaging services, new `key_types` are created to support the updated protocols.


`push_credential` stores the credentials. The `push_credential` is encrypted at rest. This field is not normally decrypted or included in an API response. Only Adobe Services (only CJM currently, though more services may be allowed in the future) can get a response containing a decrypted `push_credential`.
