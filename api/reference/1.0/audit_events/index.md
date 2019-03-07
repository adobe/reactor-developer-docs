---
title: Overview
---

# AuditEvents

An `AuditEvent` is a record of a specific change to another resource in Launch, generated at the time the change is made.  These are system events which can be subscribed to through the use of a `Callback`.

Audit events are structured in the form of: `[RESOURCE_TYPE.EVENT]`. For example: `build.created`.

Audit events are generated for the following resources:
1. Properties
1. Extensions
1. Data Elements
1. Rules
1. Rule Components
1. Libraries
1. Builds
1. Environments
1. Adapters