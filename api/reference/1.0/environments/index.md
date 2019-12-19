---
title: Overview
---

# Environments

`Extensions`, `Rules`, and `DataElements` are building blocks.  When you want to make your application do something, these building blocks are added to a `Library`. A `Library` is built into a `Build`.  The exact contents of the `Build` depend upon the `Environment` settings and the resources included in the `Library`.  Specifically, the `Environment` determines:

1. Destination - This is the location where you want your build to be deployed.  It is controlled by selecting a `Host` for the environment to use
1. Archive - You can get a deployable set of files or have it zipped up in an archive format.  This is controlled by the archive setting on the `Environment`.

The combination of destination and archive format will change how you reference the `Build` that Launch produces (that reference is often called an embed code).  If you make any changes to destination or file format, you'll need to make a matching update to your application to use the new reference.

You'll need to create a `Host` before you can create an `Environment`.

`Environments` come in three types or `stages` and you can create the specified number of each:

| Environment Type | Allowed Number |
| ---------------- |:--------------:|
| Development | Many |
| Staging | 1 |
| Production | 1 |

These `Environment` types have similar behavior, but are used at different stages of the publishing workflow in Launch.

An `Environment` belongs to exactly one `Property`.  A `Property` can have one `Environment` of `stage = 'production'`, one `Environment` of `stage = 'staging'`, and many `Environments` of `stage = 'Development'` .  

You can read more about environments in the [Environments section](https://docs.adobe.com/content/help/en/launch/using/reference/publish/environments.html) of the Launch user docs.
