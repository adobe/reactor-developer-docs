---
title: Overview
layout: documentation
---

{% alert warning, ATTENTION %}

Domains beginning with `mc-api-activation-` have been deprecated and will be removed soon.

**Please migrate API requests to the new domains as outlined below.**

`mc-api-activation-reactor[-environment].adobe.io` -> `reactor[-environment].adobe.io`

For example:

- `mc-api-activation-reactor.adobe.io` -> `reactor.adobe.io`
- `mc-api-activation-reactor-integration.adobe.io` -> `reactor-integration.adobe.io`
{% endalert %}

<br>
 
# API First

Launch, by Adobe is an entirely API-first application.  All system functionality is accessible through the API.  The UI at [launch.adobe.com](https://launch.adobe.com) is simply a friendly way to interact with them.

The Launch API - known as Reactor - uses the JSON API specification.  We expect inputs to be compliant with this specification and all outputs are also compliant.  You can read more at [jsonapi.org](http://jsonapi.org/).

# Alpha State

{% alert error, WARNING %}
**These APIs are currently in an _'alpha'_ state and are likely to change over time. Please do not use them in a production setting!**
{% endalert %}

The Launch UI has been generally available to all Experience Cloud customers since March of 2018.  The development team is moving quickly to add additional features.  This development requires us to add new APIs and in some cases change the behavior of existing APIs.

It's not a problem for the UI because we can make sure that changes are made in both places, but it is a problem for anyone using the APIs directly.

At the moment, the Reactor APIs are in an Alpha State.  You are welcome to use them, but you should not rely on them for anything running in a production state.  Until we offer an official v1.0 release of the APIs and commit to backwards compatibility, you should operate under the assumption that we will change them at any time without warning.