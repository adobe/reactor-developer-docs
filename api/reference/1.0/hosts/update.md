---
title: Update
---

# Update a Host

{% labels %}

{% alert info, Note %}
Only Hosts with `type_of: sftp` may be updated.
{% endalert %}

{% form host.patch %}

{% scenario hosts.update %}
