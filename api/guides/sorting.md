---
title: Sorting
---

# Sorting

Resources requested via index endpoints may be sorted by any attribute of the
respective resource. All index endpoints support sorting. Sorting may be
achieved by supplying a `sort` parameter in a request URL.

## Sort ascending

Resources may be sorted by an attribute in ascending order by specifying the
attribute by which to sort, and prefixing it with a `+`.

`GET /companies/:company_id/properties?sort=+name`

## Sort descending

Resources may be sorted by an attribute in descending order by specifying the
attribute by which to sort, and prefixing it with a `-`.

`GET /companies/:company_id/properties?sort=-name`

## Multiple sorts

To sort by multiple values, supply the sort directives as a comma-separated
list.

`GET /companies/:company_id/properties?sort=+name,-org_id`
