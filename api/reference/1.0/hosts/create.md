---
title: Create
---

# Create a Host

{% labels %}

{% alert info, Note %}
SFTP Hosts with `skip_symlinks: true` deliver file copies where symlinks would normally be used.
{% endalert %}

{% form host.post %}

{% scenario hosts.create hosts.create_a_host %}
