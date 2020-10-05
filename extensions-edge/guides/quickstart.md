---
title: Quickstart
---

# Quickstart

To get you up and running and building extensions, we will be using the open-source scaffolding tool, generously provided by Adobe's Launch engineers to create the necessary files and file structure for your extension package, so all you have left to do is the valuable part: actually write the code.

## Prerequisites

- Install [Node.js](https://nodejs.org/en/download/).

## Extension Setup

Create a directory where your extension files will live.

```bash
mkdir example && cd example
```

This guide utilizes the extension scaffolding tool to build out the initial extension structure so developers can quickly begin coding. This process can be done manually without the scaffold tool, if desired.

Run the scaffold tool.

```bash
npx @adobe/reactor-scaffold
```

The scaffold tool will prompt for some initial configuration options as follows:

- Display name - The visible name of the extension
- Version - The version of the extension
- Description - A short description of the extension's purpose
- Author - The name of the extension's author

The scaffold tool will then provide options for building the extension structure:

- [Extension configuration view](/extensions/reference/extension-configuration) - The view, HTML file, through which an extension gathers global settings from an user.
- [Condition type](/extensions/reference/condition-types) - Condition types evaluate whether something is true or false.
For example, this can return if the user’s browser is Chrome, if they're using an iPad, or if the user is on a specific domain.
- [Action type](/extensions/reference/action-types) - The action to perform when an event occurs. For example, send an analytics beacon, show an offer, save a cookie, or open a support chat.
- [Data element type](/extensions/reference/data-element-types) - A data element type retrieves a piece of data. This data could be in local storage, in a cookie, in a DOM element, or in a custom location.
- [Views](/extensions/reference/views) - Each event, condition, action, or data element type may provide a view allowing a user to supply settings.

{% alert info, Note %}
 - Subsequent runs of the scaffolding tool will skip over the initial configuration.
 - More than one of each condition, action, may be added.
 - Only one configuration view may exist.
{% endalert %}
