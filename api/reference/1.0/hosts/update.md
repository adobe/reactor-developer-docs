---
title: Update
---

# Update a Host

{% labels %}

{% alert info, Note %}
Only Hosts with `type_of: sftp` may be updated.
SFTP Hosts with `skip_symlinks: true` deliver file copies where symlinks would normally be used.
{% endalert %}

{% form host.patch %}

{% scenario hosts.update %}
