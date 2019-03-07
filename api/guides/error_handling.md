---
title: Error Handling
---

# Error Handling

When a problem occurs in Launch, an error may be returned in one of the
following ways:

#### API response

When performing an API request that results in an immediate error, an error
response will be returned by the API, with the HTTP code reflecting the general
type of error that occured.

#### Resource `meta`

When performing an API request that results in a delayed error, an asynchronous
activity for example, an error may be returned by the API in the
`{"meta": {"status_details": ... }}` of a related resource.

## Error Format

Error responses aim to conform to the [JSONAPI Errors
specification](http://jsonapi.org/format/#errors), and will
generally adhere to the following structure:

- `id`: a unique identifier for this particular occurrence of the problem.
- `status`: the HTTP status code applicable to this problem, expressed as a string value.
- `code`: an application-specific error code, expressed as a string value.
- `title`: a short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
- `detail`: a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
- `source`: an object containing references to the source of the error, optionally including any of the following members:
  - `pointer`: a JSON Pointer [RFC6901] to the associated entity in the request document [e.g. "/data" for a primary data object, or "/data/attributes/title" for a specific attribute].
- `meta`: a meta object containing non-standard meta-information about the error.

For example:

```json
{
  "errors": [
    {
      "id": "8a5526da-ab12-4be9-b084-2efe537f388c",
      "status": "404",
      "code": "not-found",
      "title": "Record Not Found",
      "meta": {
        "request_id": "jfb0dQ2e0XVTkQ6AOfEJFfTDjguw9x3d"
      },
      "source": {
      }
    }
  ]
}
```

## Errors

{% errors %}
