---
title: Fetch
---

# Fetch a DataElement

Retrieve the data for an existing DataElement, based on its ID.

{% alert info, Note %}
When `DataElements` are deleted, they are marked as deleted but are not actually removed from system.
Therefore, it is possible to retrieve a deleted `DataElement`.
Deleted `DataElements` can be identified by the presence of `data.meta.deleted_at`.
{% endalert %}

{% scenario data_elements.show %}
