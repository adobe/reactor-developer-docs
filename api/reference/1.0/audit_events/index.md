---
title: Overview
labels:
  - unstable
---

# AuditEvents

{% labels %}

An `AuditEvent` is a record of a specific change to another resource in Launch, generated at the time the change is made.  These are system events which can be subscribed to through the use of a `Callback`.

Audit events are structured in the form of: `[RESOURCE_TYPE.EVENT]`. For example: `build.created`.

You can replace `RESOURCE_TYPE` with any of the following:

1. `property`
1. `extension`
1. `data_element`
1. `rule`
1. `rule_component`
1. `library`
1. `build`
1. `environment`
1. `host`

You can replace `EVENT` with any of the following:

1. `created`
1. `updated`
1. `deleted`