---
title: Filtering
---

# Filtering

At times it's desirable to request a subset of records by means of a filter. Some API endpoints support the ability to filter by specific attributes. Filterable attributes will be noted on their respective index endpoint documentation areas.

To filter records on an index endpoint, supply a `filter` parameter in a request
URL, formatted as: `filter[FILTERABLE_FIELD]=value`. Filter values must be exact
matches.

For example:

`GET /companies/:company_id/properties?filter[name]=PropertyA`

{% alert info, Reminder %}
Note: The above example URI shows unencoded `[` and `]` characters simply for
readability. In practice, these characters must be percent-encoded, per the
requirements in RFC 3986.
{% endalert %}

## Filtering on multiple values

To filter by multiple values of an attribute, supply the values as a
comma-separated list.

`GET /properties/:property_id/extensions?filter[installation_status]=pending,succeeded`

## Multiple filters

To filter on multiple values, supply a `filter` parameter for each.

`GET /companies/:company_id/properties?filter[name]=PropertyA&filter[enabled]=false`
