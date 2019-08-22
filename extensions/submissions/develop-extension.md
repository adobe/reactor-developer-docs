---
title: Develop an Extension
order: 4
---

# Develop an Extension

An extension should be thought of as a (small) product with its own requirements. Determining how a Launch user will want to use your extension can help you sort the functionality into what event types, condition types, action types, and data element types your extension should provide.

With that knowledge you can plan out what components should be provided in your Extension.

## Guides

With a plan in place, these guides can help you understand the extension development process:

- The [Extension Quickstart](/extensions/guides/quickstart) guide and most of the other links available in the left-nav are great reference material for understanding what extensions can do, how user information is stored and passed between your extension and Launch, how your code is bundled into Launch libraries, and how your extension code is interpreted and used at runtime in the browser.
- The recently updated [tutorial video](https://youtu.be/rxjtC9o4rl0) is a great place to start.
- The [Introduction to Extensions](https://www.youtube.com/playlist?list=PLOdw8u2F8CIgynzKrPEwCPuDxzHW1WP5m) YouTube playlist walks through the process of creating extension packages.
- [Understanding JSON Schema](https://spacetelescope.github.io/understanding-json-schema/index.html#) article.
- [JSON Lint/Validator](http://jsonlint.com/)
- [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh) Chrome extension to highlight & print JSON & JSONP.
- [jsonschema.net](https://jsonschema.net/#/editor) editor to help create JSON schema from your object
- [JSON Schema Validator](http://www.jsonschemavalidator.net/) An online, interactive JSON Schema validator.

## Tools

There are also a number of NPM tools to help you with your extension package development:

- [Launch Extension Scaffold Tool](https://www.npmjs.com/package/@adobe/reactor-scaffold) helps you easily create a starter project on your local machine
- [Launch Extension Sandbox](https://www.npmjs.com/package/@adobe/reactor-sandbox) helps you validate your extension views and modules on your local machine
- [Launch Extension Packager](https://www.npmjs.com/package/@adobe/reactor-packager) is a command-line utility for packaging a Launch extension into a zip file
- [Launch Extension Uploader](https://www.npmjs.com/package/@adobe/reactor-uploader) is an interactive command line tool to help you input your technical account credentials and upload your extension package to Launch
- [Launch Extension Releaser](https://www.npmjs.com/package/@adobe/reactor-releaser) is an interactive command line tool to help you release your extension to private availability

## Example Extensions

There are example extensions on Github you can review or use as starter projects:

- [Hello World example extension](https://github.com/adobe/reactor-helloworld-extension)
- [Facebook example extension](https://github.com/Adobe-Marketing-Cloud-Activation/extension-facebookpixel)
- [Typekit example extension](https://github.com/jeffchasin/extension-typekit)
- [Pinterest example extension](https://github.com/jeffchasin/extension-pinterest)

## Slack Workspace

There is a Slack community workspace where extension authors can support each other. You can request access at [http://join.launchdevelopers.chat](http://join.launchdevelopers.chat).

**Please note**: while there are members of the Launch team in this Slack workspace, it is a community resource not sponsored by or moderated by Adobe.
