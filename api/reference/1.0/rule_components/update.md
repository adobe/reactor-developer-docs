---
title: Update
---

# Update a RuleComponent

{% alert info, Note %}
Updating a `RuleComponent` will also update the parent Rule's `updated_at` timestamp.
{% endalert %}

{% form rule_component.patch %}

{% scenario rule_components.update %}
