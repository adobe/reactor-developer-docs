---
title: Create
---

# Create a Property

{% form property.post %}

Some attributes marked as optional above, are required depending on the platform.  For example, if you create a web property (a `Property` with `"platform": "web"`), then `domains` is a required attribute.  If you create a mobile or an edge property (a `Property` with `"platform": "mobile"` or `"platform": "edge"`), then `domains` is a not required.

{% scenario properties.create %}
