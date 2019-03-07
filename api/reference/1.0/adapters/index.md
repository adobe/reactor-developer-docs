---
title: Overview
---
 
# Adapters

{% labels %}

`Extensions`, `Rules`, and `DataElements` are building blocks.  When you want to make your application do something, these building blocks are added to a `Library`. A `Library` is built into a `Build`. Those `Builds` are delivered to a hosted location.

`Adapters` define available destinations where the `Builds` can be delivered.  

`Adapters` come in two types as defined by the `type_of` attribute:
1. `akamai`
1. `sftp`

When a `Build` is requested by the Launch user, Launch will check the `Library` to determine which `Environment` should build for.  The `Environment` has a relationship with the `Adapter` and that is how Launch knows which `Adapter` to use to deliver the `Build.

An `Adapter` belongs to exactly one `Property`.  A `Property` may have many `Adapters`.

An `Adapter` can be used by more than one `Environment` within a `Property`.  It is common to have a single `Adapter` on a `Property`, and have all `Environments` on that `Property` use the same `Adapter`.

Each Launch `Property` must have at least one `Adapter` before you can publish.  An adapter may only belong to a single property.

You can read more about `Adapters` in the [Adapters section](https://docs.adobelaunch.com/launch-reference/publishing/adapters) of the Launch User docs.
