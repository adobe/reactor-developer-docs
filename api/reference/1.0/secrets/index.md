---
title: Overview
labels:
  - unstable
---

# Secrets

{% labels %}

A secret is a resource that exists only within event forwarding properties (properties with an attribute of `"platform": "edge"`).  They allow event forwarding to authenticate to another system for secure data exchange.

There are currently three supported secret types denoted in the `type_of` attribute.

* `token` - this is a simple string of characters known by both systems
* `simple-http` - username and password
* `oauth2-client_credentials` - these secrets support the OAuth2 Client Credentials authentication spec.  Event forwarding will ask you for the required information, then will handle the renewal of these tokens for you on a specified interval
* `oauth2-google` - these secrets support the OAuth2 Google authentication with Adobe Real-Time CDP Event Forwarding app. Event forwarding will handle the renewal of these tokens for you every 30 minutes

For a detailed explanation of the different secret types and how to use them, please refer to the (Secrets Guide)[/api/guides/secrets/].

## Usage

When you create a secret, you must specify the environment in which it will exist.  Secrets are immediately deployed to the environment in which they are created.

In order to reference a secret, you must create a data element of type Secret provided by the Core Extension.  When configuring this data element, you will be asked which secret to use for each environment.  Rules can then be created to reference a secret data element, often within the header for the HTTP call that you are making.

Event forwarding makes a best attempt to prevent you from referencing secrets that don't exist in a given environment.
