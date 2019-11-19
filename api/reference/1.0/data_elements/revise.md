---
title: Revise
---

# Revise a DataElement

Revising a DataElement is the action of creating a new revision of the
DataElement with the current (`head`) revision. A revision of a DataElement will
have its own Id. The original DataElement may be discovered via the `origin`
link.

Revising a DataElement is achieved by supplying an `action` with a value of
`revise` in the `meta` of the request `data`.


{% form data_element.patch %}

{% scenario data_elements.update data_elements.revise_a_data_element %}
