---
title: 2019 Release Notes
---

# 2019 Reactor Release Notes

## 2019-10-10

### 1) Notes

Notes are now available to be attached to Properties, Data Elements, Rules, Rule Components, Extensions, and Libraries.  Notes are short, text-only annotations that can be used for descriptions of what a resource does, how a resource should be used, and much more.

Learn more and get started using Notes in the [Notes API](/api/reference/1.0/notes/index.md) section of the docs.

## 2019-09-04

### 1) Technical Accounts can use Product Profiles

When we first released the Launch API, Adobe I/O integrations were not fully integrated into Adobe's Admin Console where regular user accounts are controlled.  As a result, these integrations had a different set of available permissions.

Adobe I/O integrations can use the same permission groups (called Product Profiles) - created and managed in Adobe's [Admin Console](https://adminconsole.adobe.com/) - that regular users use.

When you login to the Adobe I/O console to create a new integration (or update an existing integration), instead of the older role selector, you'll now see a list of product profiles from the Admin Console.  You'll need to select the product profile you want the integration to belong to.  If desired, you may select more than one product profile for your integration to belong to.

Newly created integrations will use the assigned product profile.

Existing integrations will continue to function using their assigned roles for the next 4 months.  Beginning in January 2020, integrations that do not have an assigned product profile will cease to function until they are updated.  If you assign a product profile to an existing integration before January 2020, then no action will be needed at that time.  This also means that if you want to test your integration in a product profile before January, the only way to do that will be to create a new integration.

To update your configuration, login to the [IO Console](https://console.adobe.io), select the Company the integration belongs to, click on the integration you want to update, click the Services tab, under Configured Services hover on "Experience Platform Launch API", and then click the Config icon.  Choose the product profile with the appropriate permissions and click Apply.

### 2) Library Paths on Environments

We recently made a change to the hosting paths for libraries to use a much shorter ID to represent Company, Property and Environment in the embed codes.  These changes will be most visible on newly created environments.  All the embed codes that are already in use will continue to be valid.  If you want to use the new shortened embed codes for existing environments, that will also work.

## 2019-07-30

### 1) Removed some unsupported capabilities

* We removed the undocumented/unsupported old method of adding rule components.
* We removed the `LIKE` modifier on filters, this was replaced with a `CONTAINS` modifier before we went to GA and the `LIKE` was kept around for compatibility to give people time to move over.  The time is up.

## 2019-05-29

### 1) Reactor Releaser

`reactor-releaser` is available on [npm](https://www.npmjs.com/package/@adobe/reactor-releaser).  This tool will help you transition your extension packages from `development` to `private`.  No more Postman scripts if you don't want to use them.

## 2019-05-21

### 1) Attributes is optional when you supply a meta block

If you are passing a `meta` block on a PATCH request, any `attributes` that you pass on the same request are not required and will be ignored.  This change will prevent modifying a resource and transitioning it to a new state at the same time.  This will allow you to get a resource back from the API, and transition its state without having to explicitly remove the `attributes` block before you PATCH it back.  This change affects the following resources.

* Libraries - cannot be modified and transitioned to a new state at the same time
* Extensions, Rules, and Data Elements - cannot be modified and revised at the same time
* Hosts - cannot be modified and initiate a test at the same time

### 2) Other

* We removed some extra spaces from the error code descriptions

## 2019-05-08

The Reactor API is officially versioned at 1.0.  Within the 1.x series of releases, we will not make any breaking changes.  We will continue to make additive changes.  Those changes will be documented here in the release notes and the Reference section will be kept up to date as changes are made.

The following changes were made with today's 1.0 release.  Some of these changes are breaking from the previous behavior and were made so that we don't have to break it in the future.

### 1) Retrieving Library Resources

Retrieving the resources within a Library has been changed to be consistent with the way that you retrieve resources for a Build.  You can retrieve each resource type from a paginated endpoint under Library.

```
/library/:library_id/extensions
/library/:library_id/data_elements
/library/:library_id/rules
```

### 2) Removal of unbounded includes

Some endpoints support an `?includes` parameter to retrieve the resource along with other related resources.  A few of these did not have any limits in place, such that you could ask for an unlimited number of resources.  These have been removed:

```
rules/:rule_id?include=rule_components
/libraries/:library_id?include=resources
```

### 3) Rule Components belong to Properties now

Rule Components used to exist as children of a Rule.  That made it impossible to reuse the same components across multiple rules.  In order to enable us to add this capability in the future, Rule Components need to move out from under a Rule and live at the Property level.

Please see [Rule Components](/api/reference/1.0/rule_components/) for detailed examples.

### 4) Hosts

Most everyone we talked to told us that the name Adapter didn't make much sense.  Much debate ensued.  Adapters are now called Hosts.  Please see [Hosts](/api/reference/1.0/hosts/) for detailed examples.
