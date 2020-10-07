---
title: Filtering
---

# Filtering

When using listing (GET) endpoints in the Adobe Experience Platform Launch API, you may find it necessary to limit the returned results to a subset of records. To accomplish this, many of the API's listing endpoints support the ability to filter by specific attributes.

{% alert info, Note %}
Filters are primarily used to limit result for listing (GET) endpoints. If you wish to make structured queries to the API instead, see the guide on [searching](/api/guides/searching/).
{% endalert %}

**API format**

To filter the response for a given listing endpoint, you must supply a `filter` query parameter in the request path.

{% alert info, Note %}
The syntax template below uses square bracket (`[]`) and space characters for readability. In practice, these characters must be URI-encoded, as outlined in [RFC 3986](https://tools.ietf.org/html/rfc3986). An example of a properly encoded request path is shown later in this guide.

Note that if the structure of your filters are incorrect, no filters will be applied and the full result set is returned.
{% endalert %}

```http
GET {ENDPOINT}?filter[{ATTRIBUTE_NAME}]={OPERATOR} {VALUE}
```

| Property | Description |
| :-- | :-- |
| `{ENDPOINT}` | A listing endpoint in the Launch API that supports filter parameters. |
| `{ATTRIBUTE_NAME}` | The name of a specific attribute to filter results by. Keep in mind that different endpoints support different attributes for filtering. Refer to the reference guide for the endpoint you are working with for a list of available filtering attributes. |
| `{OPERATOR}` | The operator which determines how the results are evaluated against the provided `{VALUE}`. Supported operators are listed in the [appendix](#supporter-filter-operators). |
| `{VALUE}` | The value to compare the returned results against. When comparing for equality using the `EQ` operator, the value must be an exact, case-sensitive match in order to be included in the response. |

**Request**

The following request retrieves a list of extensions for a specified property, filtered to include only those extensions whose `installation_status` equals `pending`. Note that the square brackets and space characters have been percent-encoded in the path.

```shell
curl -X GET \
  https://reactor.adobe.io/properties/295810928519/extensions?filter%5Binstallation_status%5D=EQ%20pending \
  -H 'Authorization: Bearer [TOKEN]' \
  -H 'x-api-key: [KEY]' \
  -H 'x-gw-ims-org-id: [ORG_ID]'
```

## Filtering on multiple values

To filter by multiple values of an attribute, supply the values as a
comma-separated list.

```http
GET {ENDPOINT}?filter[{ATTRIBUTE_NAME}]={OPERATOR} {VALUE_1},{VALUE_2}
```

## Multiple filters

To apply filters for multiple attributes, supply a `filter` parameter for each attribute. Parameters must be separated by ampersand (`&`) characters.

```http
GET {ENDPOINT}?filter[{ATTRIBUTE_NAME_1}]={OPERATOR} {VALUE}&filter[{ATTRIBUTE_NAME_2}]={OPERATOR} {VALUE}
```

{% alert info, Note %}
If you specify the same attribute in multiple filters on the same request, then only the last provided filter for that attribute will be applied.
{% endalert %}

## Appendix

The following section contains additional information for working with filters in the Launch API.

### Supported filter operators

The following table lists the supported operator values for filter parameters. Keep in mind that depending on the attribute you are filtering by, not all available filter operators will be applicable, such as using "less than" or "greater than" operators for string attributes.

| Operator | Description |
| :-- | :-- |
| `EQ` | The attribute must equal the provided value. |
| `NOT` | The attribute must not equal the provided value.  |
| `LT` | The attribute must be less than the provided value. |
| `GT` | The attribute must be greater than the provided value. |
| `BETWEEN` | The attribute must must fall within a specified range of values. When using this operator, [two values](#filtering-on-multiple-values) must be provided to indicate the minimum and maximum values for the desired range. |
| `CONTAINS` | The attribute must contain the provided value, such as a set of characters within a string attribute. |
