---
title: Overview
layout: documentation
---

{% alert error, BREAKING CHANGES %}

**The Reactor API is preparing for a 1.0 release on May 8, 2019.**

Starting with this 1.0 release, the Reactor API will maintain backwards compatibility so that you can build on top of it in production settings without worrying about breaking changes.

However, there are a few breaking changes that we need to make in preparation for that release.  See [Breaking Changes](/api/release_notes/breaking-changes) for details on what changes are being made and what you'll need to do to accommodate those changes before May 1.

{% endalert %}

# API First

Launch, by Adobe is an entirely API-first application.  All system functionality is accessible through the API.  The UI at [launch.adobe.com](https://launch.adobe.com) is simply a friendly way to interact with them.

This API - known as the Reactor API - uses the JSON API specification.  We expect inputs to be compliant with this specification and all outputs are also compliant.  You can read more at [jsonapi.org](http://jsonapi.org/).

The full API specification is available under Reference > 1.0 in the navigation.