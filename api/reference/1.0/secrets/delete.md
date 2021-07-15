---
title: Delete
---

# Delete a Secret

This is a hard delete with an immediate affect.  It does not require a library publish.

The secret resource is removed from the environment it is related to and the underlying resource is deleted.  Any deployed rules that reference this secret will immediately cease to function correctly.

Any data elements that reference this secret will need to be updated or removed afterward.

{% scenario secrets.delete secrets.delete_a_secret %}
