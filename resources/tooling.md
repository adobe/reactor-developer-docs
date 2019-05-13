---
title: Tooling
---

# Tooling

## Library Switching

[Adobe Experience Cloud Chrome Extension](https://chrome.google.com/webstore/detail/adobe-experience-cloud-de/ocdmogmohccmeicdhlhhgepeaijenapj?src=propaganda)

We recommend installing the Adobe Experience Cloud Debugger Chrome extension to help with debugging. Under the "tools" section of the Debugger, you can toggle debug mode for both DTM and Launch in order to see more verbose output in the browser console.

[Launch and DTM Switch](https://chrome.google.com/webstore/detail/adobe-dtm-switch/nlgdemkdapolikbjimjajpmonpbpmipk)

While not developed by Adobe, you can also try the Launch and DTM Switch Chrome Extension.   After enabling debugging through the extension, you should see messages logged to the console when running a DTM or Launch library on a website.


## Extension Development

[Extension Scaffold Tool](https://www.npmjs.com/package/@adobe/reactor-scaffold)

A command-line tool that's particularly helpful for setting up initial files when building a Reactor extension.

[Extension Sandbox](https://www.npmjs.com/package/@adobe/reactor-sandbox)

This project provides a sandbox that runs on your local computer in which you can manually test your extension. We highly recommend using this tool while developing your extension.

[Extension Packager](https://www.npmjs.com/package/@adobe/reactor-packager)

This project provides a command-line utility for packaging a Launch extension into a zip file. While using this utility is not necessary, it will validate your extension and make an effort to exclude anything from the zip file not necessary for the extension to run properly.

[Extension Uploader](https://www.npmjs.com/package/@adobe/reactor-uploader)

This project provides a command-line utility for uploading a Launch extension to the Launch extension marketplace. It can be used for uploading brand new extension packages or new versions of existing extension packages.

[Extension Releaser](https://www.npmjs.com/package/@adobe/reactor-releaser)

This project provides a command-line utility for changing a Launch extension availability from `development` to `private` in the Launch extension marketplace.
