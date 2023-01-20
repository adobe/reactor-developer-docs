---
title: List
labels:
  - unstable
---

# List ExtensionPackages

{% labels %}

Retrieve the available ExtensionPackages.

{% filters extension_package %}

There is a query parameter, `max_availability`, that has a custom filter behavior.

Listing ExtensionPackages without this parameter, or with the `max_availability=development` query component, will return the latest versions of ExtensionPackages that are owned by the user\`s Org with `development`, `private` or `public` availability, and the latest `public` versions for the rest of the ExtensionPackages.

Listing ExtensionPackages with the `max_availability=private` query component will return the latest versions of ExtensionPackages that are owned by the user\`s Org with `private` or `public` availability, and the latest `public` versions for the rest of the ExtensionPackages.

Listing ExtensionPackages with the `max_availability=public` query component will return the latest `public` versions of ExtensionPackages.

{% scenario extension_packages.index %}
