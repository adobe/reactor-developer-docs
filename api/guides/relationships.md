---
title: Relationships
---

# Relationships

## Audit events

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |
| `entity` | &#x2713; | | |

## Builds

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `data_elements` | | | |
| `extensions` | | | |
| `rules` | | | |
| `environment` | &#x2713; | | |
| `library` | &#x2713; | | |
| `property` | &#x2713; | | |

## Callbacks

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |

## Companies

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `properties` | | | |

## Data elements

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `extension` | &#x2713; | &#x2713; | |
| `updated_with_extension` | &#x2713; | | |
| `updated_with_extension_package` | &#x2713; | | |

## Environments

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `library` | | | |
| `builds` | | | |
| `host` | &#x2713; | &#x2713; | |
| `property` | &#x2713; | | |

## Extensions

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `extension_package` | &#x2713; | &#x2713; | |
| `updated_with_extension_package` | &#x2713; | | |

## Hosts

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `property` | &#x2713; | | |

## Libraries

| Relationship | Required | Required on create | Create by URL |
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

## Notes

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `resource` | &#x2713; | | |

## Properties

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `company` | &#x2713; | | |
| `callbacks` | | | |
| `environments` | | | |
| `libraries` | | | |
| `data_elements` | | | |
| `extensions` | | | |
| `extensions` | | | |

## Rule components

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `updated_with_extensions_package` | &#x2713; | | |
| `updated_with_extension` | &#x2713; | | |
| `extension` | &#x2713; | &#x2713; | |
| `notes` | | | |
| `origin` | &#x2713; | | |
| `property` | &#x2713; | | |
| `rules` | &#x2713; | &#x2713; | |
| `revisions` | &#x2713; | | |

## Rules

| Relationship | Required | Required on create | Create by URL |
| :--- | :---: | :---: | :---: |
| `libraries` | | | |
| `revisions` | &#x2713; | | |
| `notes` | | | |
| `property` | &#x2713; | | |
| `origin` | &#x2713; | | |
| `rule_components` | | | |