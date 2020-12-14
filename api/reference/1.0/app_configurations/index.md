---
title: Overview
labels:
  - unstable
---

# App Configurations

{% labels %}

`AppConfigurations` allow credentials to be stored and retrieved for later use. Currently only workflows initiated by Adobe services can read the credentials.

`platform` determines what messaging services are available.
`messaging_service` such as Apple's `apns` and Google's `fcm` determines which key types can be used.
`key_type` abstracts a protocol that a push service vendor supports and determines the definition of the `push_credential` object. As protocols evolve for the messaging services, new `key_types` are created to support the updated protocols.
`push_credential` stores the credentials. It is encrypted at rest. Currently, only Adobe Services can read these objects.

The implementation of these are in flux as features are added and removed.
