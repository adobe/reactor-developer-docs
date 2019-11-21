---
title: Overview
labels:
  - unstable
---

# Search

{% labels %}

Search provides a way to find resources matching a desired criteria, expressed as a query.


The following API resources types are searchable, utilizing the same data structure as the resource-based documents returned across the API.

- `audit_events`
- `builds`
- `callbacks`
- `data_elements`
- `environments`
- `extension_packages`
- `extensions`
- `hosts`
- `libraries`
- `properties`
- `rule_components`
- `rules`

All queries will be scoped to the user's current `Company` and accessible `Properties`.

{% alert warning, Caveats and Exceptions %}
- `meta` is not searchable and not returned in search results.
- `ExtensionPackage` delegate (`actions`, `conditions`, etc) `schema` fields are searchable as text, not as a nested data structure.
- Range queries presently only support integers.
{% endalert %}

Refer to the [Searching guide](/api/guides/searching) for more in-depth information.
