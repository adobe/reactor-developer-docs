---
title: Overview
---
 
# Hosts

{% labels %}

`Extensions`, `Rules`, and `DataElements` are building blocks.  When you want to make your application do something, these building blocks are added to a `Library`. A `Library` is built into a `Build`. Those `Builds` are delivered to a hosted location.

`Hosts` define available destinations where the `Builds` can be delivered.  

`Hosts` come in two types as defined by the `type_of` attribute:
1. `akamai`
1. `sftp`

When a `Build` is requested by the Launch user, Launch will check the `Library` to determine which `Environment` the `Library` should be built to.  The `Environment` has a relationship with the `Host` and that is how Launch knows which `Host` to use to deliver the `Build.

A `Host` belongs to exactly one `Property`.  A `Property` may have many `Hosts`.

A `Host` can be used by more than one `Environment` within a `Property`.  It is common to have a single `Host` on a `Property`, and have all `Environments` on that `Property` use the same `Host`.

Each Launch `Property` must have at least one `Host` before you can publish.  A host may only belong to a single property.

You can read more about `Hosts` in the [Hosts section](https://docs.adobe.com/content/help/en/launch/using/reference/publish/hosts/hosts-overview.html) of the Launch User docs.
