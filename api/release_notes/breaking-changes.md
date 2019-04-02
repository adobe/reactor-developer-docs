---
title: Breaking Changes
---

# Breaking Changes for Reactor API 1.0

The Reactor API that powers Launch is preparing for it's initial 1.0 release on May 1.  This release will come along with a commitment to backward compatibility.  But we are not there yet, and there are a few breaking changes that we need to make in preparation for that release.

The intent is to give all API users the notice of these changes and the knowledge/tools they'll need in order to upgrade their API usage to accomodate these changes prior to their release on May 1.

This document contains detailed descriptions of each of the breaking changes.

## Changes With A Deprecation Period

There are a few changes where the new API endpoints/payloads will exist in the Launch production environment side-by-side with the old.  These are in production already or will be very soon (keep an eye on the [release notes](/api/release-notes/2019-release-notes)).  You should make these changes as soon as possible and prior to May 1 when the old method will go away.

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

Currently, in order to create a rule component, you do a POST to `/rules/:rule_id/rule_components` with the following payload body:
```
{
  "data": {
    "attributes": {
      "delegate_descriptor_id": "kessel-test::events::click",
      "name": "My Example Click Event",
      "settings": "{\"elementSelector\":\".accordion\",\"bubbleFireIfChildFired\":true}"
    },
    "relationships": {
      "extension": {
        "data": {
          "id": "EX9d00daf64549414caf28ed48e62da98c",
          "type": "extensions"
        }
      }
    },
    "type": "rule_components"
  }
}
```

The new way to create a rule component is doing a POST to `properties/:property_id/rule_components` with a slightly different payload body.
The change to the payload body consists in adding the rules relationship, which, at this point, can only have one rule:
```
{
  "data": {
    "attributes": {
      "delegate_descriptor_id": "kessel-test::events::click",
      "name": "My Example Click Event",
      "settings": "{\"elementSelector\":\".accordion\",\"bubbleFireIfChildFired\":true}"
    },
    "relationships": {
      "extension": {
        "data": {
          "id": "EX9d00daf64549414caf28ed48e62da98c",
          "type": "extensions"
        }
      },
      "rules": {
        "data": [
          {
            "id": "RL76c41cada90344989e25d091fa677f29",
            "type": "rules
          }
        ]
      }
    },
    "type": "rule_components"
  }
}
```

{% endalert %}

{% alert warning, Change #3: No Unbounded Includes %}

There are a few places in the Reactor API where you can make a request for a resource and have it return an unbounded list of additional resources that come along with it.

One example is asking for a Library and all of its resources (Data Elements, Rules, and Extension).  This is nice as a shortcut, but it doesn't scale well.

From now one, you'll need to hit a paginated endpoint underneath the "parent" resource in order to retrieve the included resources.

**GET Library and include Resources**

Currently if you want to retrieve the resources in a Library, you can do it two ways:
`/libraries/\:id?include=resources`
`/libraries/:id/resources`

The new way to retrieve the resources within a Library is to call each relationship endpoint explicitly.
`libraries/\:id/relationships/data_elements`
`libraries/\:id/relationships/extensions`
`libraries/\:id/relationships/rules`
These endpoints are paginated and filterable like all other list endpoints.

**GET Rule and include Rule Components**

Currently if you want to retrieve the Rule Components in a Rule, you can do it in two ways:
`rules/:id/rule_components`
`rules/:id?include=rule_components`

The new way to retrieve the Rule Components that are used by a Rule is to ...
`rules/:id/rule_components`

The new way to associate Rule Components to a rule is:

To replace the rule's existing rule_components with a new set of rule_components:
`PATCH rules/:id/relationships/rule_components` with a body:
```
{
  "data": [
    { "type": "rule_components", "id": "2" },
    { "type": "rule_components", "id": "3" }
  ]
}
```

To add a rule_component to the rule's existing rule_components:
`POST rules/:id/relationships/rule_components` with a body:
```
{
  "data": [
    { "type": "rule_components", "id": "4" },
    { "type": "rule_components", "id": "5" }
  ]
}
```

{% endalert %}

{% alert warning, Change 4: Library Resources Move to Specific Endpoints %}

Right now, when you want to see what resources are contained in a Library, you hit the `/library/:id/resources` endpoint.  When you want to see what resources are in a Build, you ask for the different resource types separately (`/build/:id/extensions`, `/build/:id/dataElements`, and `/build/:id/rules`).

We are changing the `/library` endpoint to be consistent with the way you retrieve resources for builds. So you'll have `/library/:id/extensions`, `/library/:id/dataElements`, and `/library/:id/rules`

{% endalert %}

## Changes That Require a Hard Cutover

For a few of these changes, it is not feasible for us to deploy the new method side-by-side with the old, so you'll have to make a hard cutover.

These changes will be released to Production on May 1 and you'll need to update your API usage after that before they will function again.

{% alert error, Change #5: LIKE Changes to CONTAINS %}

Currently there are a few places where you filter an endpoint to trim down the result set that you'll get.  You can use the `LIKE` keyword in those filters, but it actually behaves like a "contains" filter.

We're changing that specific keyword to `CONTAINS` so it matches the "contains" behavior.  

We're also keeping the `LIKE` keyword, but changing the behavior to actually match a SQL `LIKE`.

So if you're using `LIKE` you need to change it to `CONTAINS` to keep the same behavior.  And if you actually wanted a `LIKE` filter, now you have one.

{% endalert %}

{% alert error, Change #6: Adapter Changes to Host %}

From the beginning, whenever we've Adapters have come up in a conversation, we immediately have to describe what it is, because the meaning is not obvious from the name.  We've put this off long enough, and we're changing the name.

`Adapter` is changing to `Host`.  Along with this change, there is actually a `host` attribute on the `Adapter`, and having a `Host.host` attribute is just confusing, so this attribute is changing to be `Host.server`.

#### POST

To create a `Host`, you need to do a `POST /properties/:property_id/hosts` with the a payload body similar to:
```
{
  "data": {
    "attributes": {
      "name": "Example SFTP Host",
      "type_of": "sftp",
      "username": "John Doe",
      "encrypted_private_key": "-----BEGIN PGP MESSAGE-----\n\nhQIMAwB8kNQ7jtk8AQ/+IPE+jteweLyNgdkzkBWN4c+wpRfTP9ionSywdWzZsRZ2\ngpIHLidqCgM+iRw0CgbAKhdAmA1wVyWP4HCa0eJuNCVwj+NqJlWW8qWxCWeZi2KC\nhqsoaB5+xIbS3Jwt8S4Na+DgvyjSj88sALvG9Y/xqNexRvcuvv0KKFoVYPOeW/w9\n+6x+vUmZFrTWMaNtKH6X9kifo5l+05d3XngPLfml4cKzWmO1f3FEvTX0O4nJurQ7\nNc27dt2XAO5Y8bqCClQ6AHOFVrkKnTifHF79A3AhCB5E9wMY4FJ/EReZ6Uk0ixOn\n76XeGbkl1jidajM5G/gylwEwOXN8CVy5DQyvxGulhsaaqtri7GZxQC5HUTETIHwO\nxThAttH22uaBjhMmYiCvPzSL4Z9UNFZeGPfb17k5E1kauprR2ItUJX86+Cid/FnR\nW7QN/8J4Jnf6Ggp90VujV0uIvdyLYq3T0xe9WZmONJaQ5bDYDv5ZfkcapOvXw4zr\nxrL1vrpZ5Qfu8oLQ19JOT2o7e3p8Kh7lDPIL7RH2bYesinLJ7wdopmkpj4/4gpHK\njzlWalZd75PEsttsUJ+ODVSOXG7iVhx9EvkZagUo0oeZ3oY1Jy5oik/gvVp28wDO\n8T1uYK/jeCSiuslxCYxth8a+5Wgiy8Jw1vHCRudsNgU1x2zYuOJetJS14Z/CTETS\nTgGPh0J6fQEvzZTM6AEJpRs+cVZV1hnTspyo2S5wv/SdrbqMkVHhs8rlq/0PWpSB\nLhLNlh8kLPR0KOG0V79GEO20At0HL/yGny/GKrTyAw==\n=oRpa\n-----END PGP MESSAGE-----\n",
      "server": "//example.com",
      "path": "assets",
      "port": 22
    },
    "type": "hosts"
  }
}
```

#### PATCH

To update a `Host`, you need to do a `PATCH /properties/:property_id/hosts` with the a payload body similar to:
```
{
  "data": {
    "attributes": {
      "name": "My new SFTP Host"
    },
    "id": "HT294b93994b7c462285602283a6437e43",
    "type": "hosts"
  }
}
```

#### GET

To fetch a `Host`, you need to do a `GET /hosts/:id`

{% endalert %}
