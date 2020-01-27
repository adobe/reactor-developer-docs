---
title: Searching
labels:
  - unstable
---

# Searching

{% labels %}

The following API resource types are searchable, utilizing the same data structure as the resource-based documents returned across the API.

- `audit_events`
- `builds`
- `callbacks`
- `data_elements`
- `environments`
- `extension_packages`
- `extensions`
- `hosts`
- `libraries`
- `properties`
- `rule_components`
- `rules`

All queries will be scoped to the user's current `Company` and accessible `Properties`.

Please help test Search and share your feedback via the [Launch Developers Slack channel](http://join.launchdevelopers.chat).

{% alert warning, Caveats and Exceptions %}
- `meta` is not searchable and not returned in search results.
- `ExtensionPackage` delegate (`actions`, `conditions`, etc) `schema` fields are searchable as text, not as a nested data structure.
- Range queries presently only support integers.
{% endalert %}

## Querying

#### Structure

An example request with all available options:

```json
{
  "data" : {
    "from": 0,
    "size": 25,
    "query": {
      "attributes.display_name": {
        "value": "Performance"
      },
      "attributes.revision_number": {
        "lte": "2",
        "gt": "0"
      }
    },
    "sort": [
      {
        "attributes.revision_number": "desc"
      }
    ],
    "resource_types": [
      "data_elements",
      "rule_components"
    ]
  }
}
```

- `from` - Integer - The result set offset. Default `0`. Minimum `0`.
- `size` - Integer - The maximum results to return. Default `100`. Maximum `100`.
- `query` - Object
  - document field path - Path: allowed characters: `a-z`, `*`, and `.`. E.g. `attributes.name`.
    - `exists` - Boolean - The field's existence in the document.
    - `range` - Object
      - `gt` - Integer - Greater than the supplied value, non-inclusive.
      - `gte` - Integer - Greater than or equal to the supplied value.
      - `lt` - Integer - Less than the supplied value, non-inclusive.
      - `lte` - Integer - Less than or equal to the supplied value.
    - `value` - String - The value to use for the search query.
    - `value_operator` - String - Boolean logic used to interpret terms in the query `value`. Allowed values: `AND`, `OR`. Default value: `AND`. May only be used in-conjuntion with `value` queries.
- `sort` - Array, Object - Order in which to sort results.
  - document field path - String - Path: allowed characters: `a-z` and `.` . Values: `desc`, `asc`
- `resource_types` - Array, String - The resource types to search.

#### Search results

Search results will consist of a collection of matching API resource-based documents. These resources will not include the document's usual `meta`, if any. The document's `meta` will include a `match_score` conveying the document's relevance to the supplied query.


#### Searching across multiple fields

A search can be performed across multiple fields by use of wildcards in the field name. For example, to search across multiple attribute fields use `attributes.*` as the field name.

```json
{
  "data" : {
    "query": {
      "attributes.*": {
        "value": "evar7"
      }
    }
  }
}
```

{% alert info, Info %}
Normally, search values must match the type of data being searched, i.e. a query value of "5" against an integer field would fail. When searching across multiple fields, the query type requirement is made lenient to avoid errors, but may produce undesired results.
{% endalert %}


#### Scoping queries to specific resource types

A search can be scoped to resources of a specific type by supplying `resource_types` in the request. For example, to search across `data_elements`, and `rule_components`:

```json
{
  "data" : {
    "from": 0,
    "size": 25,
    "query": {
      "attributes.display_name": {
        "value": "Performance"
      }
    },
    "resource_types": [
      "data_elements",
      "rule_components"
    ]
  }
}
```

#### Sorting

Documents can be sorted by supplying `sort` in the request. For example, to sort by `created_at` with newest first:

```json
{
  "data" : {
    "from": 0,
    "size": 25,
    "query": {
      "attributes.display_name": {
        "value": "Performance"
      }
    },
    "sort": [
      {
        "attributes.created_at": "desc"
      }
    ],
    "resource_types": [
      "data_elements",
      "rule_components"
    ]
  }
}
```

## Understanding query logic

Search is concerned with answering how relevant a document is to a supplied query. The way document data is analyzed and indexed directly affects this. Most fields adhere to the following conventions:

- Text - Text, case-insensitive
- Enum values - Exact match, case-sensitive, E.g. Build statuses (`pending`, `succeeded`, `failed`)
- Integers - Integers
- Floats - Floats
- Timestamps - Dates
- Display names - Text with a partial term analysis, case-insensitive
- `id` - Exact match, case-sensitive
- `delegate_descriptor_id` fields - Text, exact match, case-sensitive, terms split on `::`
- `name` fields - Exact match, case-sensitive
- `settings` fields - Text with a partial term analysis, case-insensitive
- `type` - Exact match, case-sensitive


Search query values are split into terms for matching against indexed documents. Terms are `AND`'ed by default.

When using `AND` as the `value_operator`, a query value of `My Rule Holiday Sale` is interpereted as documents with a field containing `My AND Rule AND Holiday AND Sale`.

When using `OR` as the `value_operator`, a query value of `My Rule Holiday Sale` is interpereted as documents with a field containing `My OR Rule OR Holiday OR Sale`. The more terms that match, the higher the `match_score`. Due to the nature of partial term matching, it's very possible nothing closely matches the desired value, and to obtain a result set where the value matched on a very basic level, i.e. a few characters of text matched.


## Common search examples

#### Any resource with a specific name

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "attributes.name": {
        "value": "Adobe"
      }
    }
  }
}
'
```

#### Any resource referencing "evar7"

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "attributes.*": {
        "value": "evar7"
      }
    }
  }
}
'
```

#### DataElements of a "custom-code" delegate type

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "attributes.delegate_descriptor_id": {
        "value": "custom-code"
      }
    },
    "resource_types": ["data_elements"]
  }
}
'
```

#### RuleComponents referencing a specific DataElement

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "attributes.settings": {
        "value": "myDataElement8"
      }
    },
    "resource_types": ["rule_components"]
  }
}
'
```

#### Rules in a specific Property

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "relationships.property.data.id": {
        "value": "PR3cab070a9eb3423894e4a3038ef0e7b7"
      }
    },
    "resource_types": ["rules"]
  }
}
'
```

#### Find a resource by ID

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "id": {
        "value": "PR3cab070a9eb3423894e4a3038ef0e7b7"
      }
    }
  }
}
'
```

#### Perform a search using "OR" term logic

```bash
curl -X POST "https://reactor.adobe.io/search" \
  -H "Accept: application/vnd.api+json;revision=1" \
  -H "Content-Type: application/vnd.api+json" \
  -H "Authorization: Bearer [TOKEN]" \
  -H "X-Api-Key: [KEY]" \
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \
  -d '
{
  "data" : {
    "query": {
      "attributes.display_name": {
        "value": "My Rule Holiday Sale",
        "value_operator: "OR"
      }
    }
  }
}
'
```
