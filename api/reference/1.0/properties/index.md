---
title: Overview
---

# Properties

Within Launch, a `Property` is simply a container to hold most of the other resources available within the API.  

In the resource hierarchy, `Property` is the owner of:
1. `Builds`
1. `Callbacks`
1. `DataElements`
1. `Environments`
1. `Extensions`
1. `Hosts`
1. `Libraries`
1. `Rules`
1. `RuleComponents`

Resources that are not owned by Property are:
1. `AuditEvents`
1. `Company`
1. `ExtensionPackages`
1. `Profiles`

A `Property` belongs to exactly one `Company`.  A `Company` can have many `Properties`.

You can read more about Properties (including the logic of when you might want to create a new one instead of combining them) in the [Properties section](https://docs.adobe.com/content/help/en/launch/using/reference/admin/companies-and-properties.html) of the Launch user docs.
