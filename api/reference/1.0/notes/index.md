---
title: Overview
---

# Notes

`Notes` are textual annotations you can add to Launch resources of these types:
- `DataElements`
- `RuleComponents`
- `Rules`
- `Extensions`
- `Libraries`
- `Properties`

Those six types are collectively known as the `Notable` resources.

When a `Notable` resource is deleted, its associated `Notes` are also deleted.

## `Notes` are Comments
Launch doesn't attach any meaning to `Notes`.
Adding a `Note` won't change the behavior of your `Property`.

You might use `Notes` to:
- provide background information
- function as to-do lists
- pass along resource usage advice
- give instructions to other team members
- record historical context
- remind yourself why this resource is built the way it is

But Launch ignores `Notes` so you are free to use them any way you want.

## Revisable Notables

In the case of revisable types
(`DataElements`, `RuleComponents`, `Rules`, and `Libraries`),
any `Notes` must be created on the current (`head`)
revision. They may not be attached to other revisions.

However, `Notes` may be _read_ from revisions. In such cases, the endpoints
will return only the `Notes` that existed before the creation of the revision.
They provide a snapshot of the annotations as they were when the revision was cut.
In contrast, reading `Notes` from the current (`head`) revision will return all
its `Notes`.

## Limitations

Each `Note` is limited to 512 Unicode characters.

`Notes` are not editable.
The only way to delete them is to delete their corresponding `Notable`.

`Notes` cannot be attached to non-`Notable` resources. Specifically,
you cannot add `Notes` to
`Adapters`, `AuditEvents`, `Builds`, `Callbacks`, `Companies`,
`Environments`, `ExtensionPackages`, `Hosts`, or `Profiles`.
