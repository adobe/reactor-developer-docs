---
title: Hosting third-party libraries
---

# Hosting third-party libraries

One of the main purposes of extensions in Adobe Experience Platform Launch is to enable you to easily implement existing marketing technologies (libraries) into your website. By using extensions, you can implement libraries provided by third-party content delivery networks (CDNs) without having to manually edit your website's HTML.

There are several methods to reference third-party libraries within your extensions in Platform Launch. This document provides an overview of these different reference methods, including the pros and cons of each.

## Prerequisites

This document requires a working understanding of extensions within Platform Launch, including what they can do and how they are composed. See the [extensions overview](../index.md) for more information.

## Base code loading process

Outside of the context of Platform Launch, it is important to understand how marketing technologies typically load on a website. Third-party library vendors provide a snippet of code (called a base code) that must be embedded within your website's HTML in order to load the library's functionalities.

In general, the base codes for marketing technologies execute some variant of the following process when loading on your site:

1. Sets up a global function that can be used to interact with the vendor library.
1. Loads the third-party library.
1. Makes a series of queued initial calls to the global function for configuration and tracking purposes.

{% alert info, Note %}
When the global function is initially set up, you can still make calls to the function before the library has finished loading. Any calls you make are added to the base code's queueing mechanism, and are then executed in order once the library loads.

Once the library finishes loading, the global function is replaced with a new one that bypasses the queue and instead immediately processes any future calls to the function.
{% endalert %}

## Library hosting options in Platform Launch

### Load at runtime from the vendor host

### Load at runtime from the Platform Launch library host

### Directly embed the library

## Next steps

This document provided an overview of the different methods for hosting third-party libraries.
