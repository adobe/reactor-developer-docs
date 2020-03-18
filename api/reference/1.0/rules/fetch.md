---
title: Fetch
---

# Fetch a Rule

Retrieve the data for an existing Rule, based on its ID.

{% alert info, Note %}
When `Rules` are deleted, they are marked as deleted but are not actually removed from system.
Therefore, it is possible to retrieve a deleted `Rule`.
Deleted `Rules` can be identified by the presence of `data.meta.deleted_at`.
{% endalert %}

{% alert info, Note %}
A Rule's `updated_at` timestamp will also reflect changes to it's child `RuleComponents`.
{% endalert %}

{% scenario rules.show %}
