---
title: 2020 Release Notes
---

# 2020 Reactor Release Notes

## 2020-04-13

<hr class="spectrum-Rule spectrum-Rule--medium">

### Support for Array Transforms in Extensions

See [transforming settings objects](https://developer.adobelaunch.com/extensions/reference/extension-manifest/#transforming-settings-objects) for more info.

<br>

## 2020-03-23

<hr class="spectrum-Rule spectrum-Rule--medium">

### Extension Package Validation

The exchange url validation for extension packages has been updated to include the `exchange.adobe.com` url.

<br>

## 2020-03-19

<hr class="spectrum-Rule spectrum-Rule--medium">

### Callback missing header

The `content-type` header was missing from the request headers for callback deliveries, this has been fixed.

<br>

## 2020-03-18

<hr class="spectrum-Rule spectrum-Rule--medium">

### Rule updated_at

When a `rule_component` (event, condition, action) is modified, the `updated_at` timestamp for the rule it is associated with is also updated.

<br>

## 2020-03-03

<hr class="spectrum-Rule spectrum-Rule--medium">

### Search

Notes are now a searchable `resource_type`, see the [developer docs](https://developer.adobelaunch.com/api/reference/1.0/search/perform/) for more info.

<br>

## 2020-02-20

<hr class="spectrum-Rule spectrum-Rule--medium">

### Build Compilation Errors

Context for code compilation errors is now returned as part of the error details within the `meta.status_details` block of the build response.

<br>
