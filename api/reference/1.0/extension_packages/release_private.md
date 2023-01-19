---
title: Private Release
labels:
  - unstable
---

# Private Release an ExtensionPackage

{% labels %}

Once you have completed testing your `ExtensionPackage` you can release it privately.  This makes it available to any property within your company.

After you have released privately, you can begin the public release process by filling out the [Public Release Request Form](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=7DRB5U).

A Private release is achieved by supplying an `action` with a value of `release_private` in the `meta` of the request `data`.

{% scenario extension_packages.update extension_packages.private_release_an_extension_package %}
