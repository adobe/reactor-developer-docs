---
title: Revise
---

# Revise an Extension

Revising an Extension is the action of creating a new revision of the extension
with the current (`head`) revision. A revision of an Extension will have its own
Id. The original Extension may be discovered via the `origin` link.

Revising an Extension is achieved by supplying an `action` with a value of
`revise` in the `meta` of the request `data`.


{% scenario extensions.update extensions.revise_an_extension %}
