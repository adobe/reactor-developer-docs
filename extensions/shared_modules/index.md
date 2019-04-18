---
title: Overview
---

# Shared Modules

Extensions have the capability to provide shared modules. These modules are capabilities exposed outside of the extension itself for other extensions to interact with. For example, the Adobe Analytics extension provides the ability to interact with the tracker object so that other extensions may read and set variables before a beacon is sent.

If your extension provides a shared module, please document the object and its capabilities in this section of the docs. To do so, simply fork [https://github.com/Adobe-Marketing-Cloud/reactor-developer-docs](https://github.com/Adobe-Marketing-Cloud/reactor-developer-docs), make a new .md file in this directory (`/extensions/shared-modules`), add your documentation, and open a PR.