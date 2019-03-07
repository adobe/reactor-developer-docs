---
title: Fetch
---

# Fetch an Extension

Retrieve the data for an existing Extension, based on its ID.

{% alert info, Note %}
When `Extensions` are deleted, they are marked as deleted but are not actually removed from system.
Therefore, it is possible to retrieve a deleted `Extension`.
Deleted `Extensions` can be identified by the presence of `data.meta.deleted_at`.
{% endalert %}

{% scenario extensions.show %}
