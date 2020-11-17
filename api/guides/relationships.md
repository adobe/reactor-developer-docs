---
title: Relationships
---

# Relationships

Resources in Adobe Experience Platform Launch are often related to each other. This document provides an overview of how resource relationships are established in Platform Launch, and the relationship requirements of each resource type in the API.

Depending on the type of resource in question, some relationships are required. A required relationship implies that the parent resource cannot exist without the relationship. All other relationships are optional.

Regardless of whether they are required or optional, relationships are either automatically established by the system when relevant resources are created, or they must be created manually. In the case of creating relationships manually, there are two possible methods depending on the resource in question:

* [Create by payload](#create-a-relationship-by-payload)
* [Create by URL](#create-a-relationship-by-url) (for libraries only)

Refer to the section on [relationship requirements](#relationship-requirements-by-resource) for a list of the compatible relationships for each Platform Launch resource type, and the methods required to establish those relationships where applicable.

## Create a relationship by payload

Some relationships must be manually established when you initially create a resource. To accomplish this, you must provide a `relationship` object in the request payload when you first create the parent resource. Examples of these relationships include:

* [Creating a `data_element`](/api/reference/1.0/data_elements/create/) with the required `extensions`.
* [Creating an `environment`](/api/reference/1.0/environments/create/) with the required `host` relationship.

**API format**

```http
POST /properties/{PROPERTY_ID}/{RESOURCE_TYPE}
```

| Parameter | Description |
| --- | --- |
| `{PROPERTY_ID}` | The ID of the property to which the resource belongs. |
| `{RESOURCE_TYPE}` | The type of resource to be created. |

**Request**

The following request creates a new `rule_component`, establishing relationships with `rules` and an `extension`.

```shell
curl -X POST \
  https://reactor.adobe.io/properties/PRf606dbddfbdc44f580fc6f342b5ff9be/rule_components \
  -H 'Authorization: Bearer [TOKEN]' \
  -H 'x-api-key: [KEY]' \
  -H 'x-gw-ims-org-id: [ORG_ID]' \
  -H 'Accept: application/vnd.api+json;revision=1' \
  -H 'Content-Type: application/vnd.api+json' \
  -d '{
        "data": {
          "attributes": {
            "delegate_descriptor_id": "kessel-test::events::click",
            "name": "My Example Click Event",
            "settings": "{\"elementSelector\":\".accordion\",\"bubbleFireIfChildFired\":true}"
          },
          "relationships": {
            "extension": {
              "data": {
                "id": "EXa2865f4d14204fa094f247406424371b",
                "type": "extensions"
              }
            },
            "rules": {
              "data": [
                {
                  "id": "RLd53598e3f1884e63bbc8e9c95e463dcf",
                  "type": "rules"
                }
              ]
            }
          },
          "type": "rule_components"
        }
      }'
```

| Property | Description |
| --- | --- |
| `relationships` | An object that must be provided when creating relationships by payload. Each key in this object represents a specific relationship type. In the above example, `extension` and `rules` relationships are established, which are particular to `rule_components`. For more information on compatible relationship types for different Platform Launch resources, see the section on [relationship requirements by resource](#relationship-requirements-by-resource). |
| `data` | Each relationship type provided under the `relationship` object must contain a `data` property, which references the `id` and `type` of the Platform Launch resource a relationship is being established with. You can create a relationship with multiple resources of the same type by formatting the `data` property as an array of objects, with each object containing the `id` and `type` of an applicable resource. |
| `id` | The unique ID of a Platform Launch resource. Each `id` must be accompanied with a sibling `type` property, indicating the type of resource in question. |
| `type` | The type of Platform Launch resource as referenced by a sibling `id` field. Accepted values include `data_elements`, `rules`, `extensions`, and `environments`. |

## Create a relationship by URL

Unlike other Platform Launch resources, libraries establish relationships through their own dedicated `/relationship` endpoints. Examples include:

* [Assigning a library to an environment](/api/reference/1.0/libraries/relationships/environment/set_relationship/): `/libraries/{LIBRARY_ID}/relationships/environment`
* [Creating a relationship between a library and a rule (or set of rules)](/api/reference/1.0/libraries/relationships/rules/add_relationships/): `/libraries/{LIBRARY_ID}/relationships/rules`

**API format**

```http
POST /properties/{PROPERTY_ID}/libraries/{LIBRARY_ID}/relationships/{RESOURCE_TYPE}
```

| Parameter | Description |
| --- | --- |
| `{PROPERTY_ID}` | The ID of the property to which the library belongs. |
| `{LIBRARY_ID}` | The ID of the library you want to create a relationship for. |
| `{RESOURCE_TYPE}` | The type of resource the relationship is targeting. Available values include `environment`, `data_elements`, `extensions`, and `rules`. |

**Request**

The following request uses the `/relationships/environment` endpoint for a library to create a relationship with an environment.

```shell
curl -X POST \
  https://reactor.adobe.io/properties/PRf606dbddfbdc44f580fc6f342b5ff9be/libraries/LB10c1fd171cd347f19fcb8659a8d679ef/relationships/environment \
  -H 'Authorization: Bearer [TOKEN]' \
  -H 'x-api-key: [KEY]' \
  -H 'x-gw-ims-org-id: [ORG_ID]' \
  -H 'Accept: application/vnd.api+json;revision=1' \
  -H 'Content-Type: application/vnd.api+json' \
  -d '{
        "data": {
          "id": "ENf395a477d2b24ad696d65b901055b9dc",
          "type": "environments",
        }
      }'
```

| Property | Description |
| --- | --- |
| `data` | An object which references the `id` and `type` of the target Platform Launch resource for the relationship. If you are creating a relationship with multiple resources of the same type (such as `extensions` and `rules`), the `data` property must be formatted as an array of objects, with each object containing the `id` and `type` of an applicable resource. |
| `id` | The unique ID of a Platform Launch resource. Each `id` must be accompanied with a sibling `type` property, indicating the type of resource in question. |
| `type` | The type of Platform Launch resource as referenced by a sibling `id` field. Accepted values include `data_elements`, `rules`, `extensions`, and `environments`. |

## Relationship requirements by resource

The following tables outline the available relationships for each resource type, whether or not those relationships are required, and the accepted method to manually create the relationship where applicable.

{% alert info, Note %}
If a relationship is not listed being created by payload or URL, then it is automatically assigned by the system.
{% endalert %}

### Audit events

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |
| `entity` | &#x2713; | | |

### Builds

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `data_elements` | | | |
| `extensions` | | | |
| `rules` | | | |
| `environment` | &#x2713; | | |
| `library` | &#x2713; | | |
| `property` | &#x2713; | | |

### Callbacks

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |

### Companies

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `properties` | | | |

### Data elements

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `extension` | &#x2713; | &#x2713; | |
| `updated_with_extension` | &#x2713; | | |
| `updated_with_extension_package` | &#x2713; | | |

### Environments

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `library` | | | |
| `builds` | | | |
| `host` | &#x2713; | &#x2713; | |
| `property` | &#x2713; | | |

### Extensions

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `extension_package` | &#x2713; | &#x2713; | |
| `updated_with_extension_package` | &#x2713; | | |

### Hosts

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |

### Libraries

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `builds` | | | |
| `environment` | | | &#x2713; |
| `data_elements` | | | &#x2713; |
| `extensions` | | | &#x2713; |
| `rules` | | | &#x2713; |
| `notes` | | | |
| `upstream_library` | &#x2713; | | |
| `property` | &#x2713; | | |
| `last_build` | | | |

### Notes

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `resource` | &#x2713; | | |

### Properties

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `company` | &#x2713; | | |
| `callbacks` | | | |
| `environments` | | | |
| `libraries` | | | |
| `data_elements` | | | |
| `extensions` | | | |
| `extensions` | | | |

### Rule components

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `updated_with_extensions_package` | &#x2713; | | |
| `updated_with_extension` | &#x2713; | | |
| `extension` | &#x2713; | &#x2713; | |
| `notes` | | | |
| `origin` | &#x2713; | | |
| `property` | &#x2713; | | |
| `rules` | &#x2713; | &#x2713; | |
| `revisions` | &#x2713; | | |

### Rules

| Relationship | Required | Create by payload | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `rule_components` | | | |
