---
title: Breaking Changes
---

# Breaking Changes for Reactor API 1.0

The Reactor API that powers Launch is preparing for it's initial 1.0 release on May 1.  This release will come along with a commitment to backward compatibility.  But we are not there yet, and there are a few breaking changes that we need to make in preparation for that release.

The intent is to give all API users the notice of these changes and the knowledge/tools they'll need in order to upgrade their API usage to accomodate these changes prior to their release on May 1.

This document contains detailed descriptions of each of the breaking changes.

## Changes With A Cutover Period

There are a few changes where the new API endpoints/payloads will exist in the Launch production environment side-by-side with the old.  These are in production already or will be very soon (keep an eye on the [release notes](/api/release-notes/2019-release-notes)) and you can make the changes now.

{% alert warning, Change #1: New Domains for the API %}

Currently, when you make a request to the Reactor API, the domain is structured as follows:

`mc-api-activation-reactor[-environment].adobe.io`

These are now much simpler and the new domains are:

`reactor[-environment].adobe.io`

For 99% of you, the only domain you'll need to worry about is the production domain which is simply `reactor.adobe.io`.

{% endalert %}

{% alert warning, Change #2: Rule Components Move to Property %}

Each Rule Component exists as a child of a Rule.  This makes it impossible to reuse the same components across rules.  In order to enable us to add this capability in the future, Rule Components need to move out from under a Rule and live at the Property level.

This means that the mechanism for creating Rule Components and the way that they relate to Rules needs to change.

**POST**

[TODO] Currently in order to create a rule,  you ...

[TODO] The new way to create a rule is to ...

**PATCH**

[TODO] Currently in order to update a rule, you ...

[TODO] The new way to update a rule is to ...

{% endalert %}

{% alert warning, Change #3: No Unbounded Includes %}

There are a few places in the Reactor API where you can make a request for a resource and have it return an unbounded list of additional resources that come along with it.

One example is asking for a Library and all of its resources (Data Elements, Rules, and Extension).  This is nice as a shortcut, but it doesn't scale well.

From now one, you'll need to hit a paginated endpoint underneath the "parent" resource in order to retrieve the included resources.

**GET Library and include Resources**

[TODO] Currently if you want to retrieve the resources in a Library, you...

[TODO] The new way to retrieve the resources within a Library is to ...

**GET Rule and include Rule Components**

[TODO] Currenly if you want to retrieve the Rule Components in a Rule, you...

[TODO] The new way to retrieve the Rule Components that are used by a Rule is to ...

{% endalert %}

{% alert warning, Change 4: Library Resources Move to Specific Endpoints %}

Right now, when you want to see what resources are contained in a Library, you hit the `/library/:id/resources` endpoint.  When you want to see what resources are in a Build, you ask for the different resource types separately (`/build/:id/extensions`, `/build/:id/dataElements`, and `/build/:id/rules`).

We are changing the `/library` endpoint to be consistent with the way you retrieve resources for builds. So you'll have `/library/:id/extensions`, `/library/:id/dataElements`, and `/library/:id/rules`

{% endalert %}

## Changes That Require a Hard Cutover

For a few of these changes, it is not easy for us to deploy the new method side-by-side with the old, so you'll have to make a hard cutover.

For these changes, we are providing the Integration environment where the new changes will be deployed so that you can test your changes before they go live.  You'll need to test these changes in the Integration environment prior to May 1.

Then on May 1, these changes will go live in Production and you'll need to update your API usage after that before they will function again in Production.

{% alert error, Change #5: LIKE changes to CONTAINS %}

Currently there are a few places where you filter an endpoint to trim down the result set that you'll get.  You can use the `LIKE` keyword in those filters, but it actually behaves like a "contains" filter.

We're changing that specific keyword to `CONTAINS` so it matches the "contains" behavior.  

We're also keeping the `LIKE` keyword, but changing the behavior to actually match a SQL `LIKE`.

So if you're using `LIKE` you need to change it to `CONTAINS` to keep the same behavior.  And if you actually wanted a `LIKE` filter, now you have one.

{% endalert %}

{% alert error, Change #6: Adapter changes to Host %}

From the beginning, whenever we've Adapters have come up in a conversation, we immediately have to describe what it is, because the meaning is not obvious from the name.  We've put this off long enough, and we're changing the name.

`Adapter` is changing to `Host`.  Along with this change, there is actually a `host` attribute on the `Adapter`, and having a `Host.host` attribute is just confusing, so this attribute is changing to be `Host.url`.

#### POST

[TODO]

#### PATCH

[TODO]

#### GET

[TODO]

{% endalert %}