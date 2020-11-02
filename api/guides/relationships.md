---
title: Relationships
---

# Relationships

Resources in Adobe Experience Platform Launch are often related to each other. This document provides an overview of how resource relationships are established in Platform Launch, and the relationship requirements of each resource type in the API.

Depending on the type of resource in question, some relationships are required. A required relationship implies that the parent resource cannot exist without the relationship. All other relationships are optional.

Regardless of whether they are required or optional, relationships are either automatically established by the system when relevant resources are created, or they must be created manually. In the case of creating relationships manually, there are two possible methods depending on the resource in question:

* **Create by payload**: These relationships are created by providing a `relationship` object in the request payload when you create the parent resource. Examples of these relationships include:
  * Create a `data_element` with the required `extensions`
  * Create an `environment` with the required `host` relationship.
* **Create by URL**: These relationships are created by making a request to the `/relationships` endpoint of a particular resource, and supplying IDs and types in the request body for the resources you want to be related. This method only applies to libraries. Examples include:
  * Creating a relationship between a library and an environment: `/libraries/{LIBRARY_ID}/relationships/environment`
  * Creating a relationship between a library and a rule: `/libraries/{LIBRARY_ID}/relationships/rules`

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