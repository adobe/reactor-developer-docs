---
title: 2019 Release Notes
---

# 2019 Reactor Release Notes

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

Rule Components used exist as a child of a Rule.  That made it impossible to reuse the same components across multiple rules.  In order to enable us to add this capability in the future, Rule Components need to move out from under a Rule and live at the Property level.

Please see [Rule Components](/api/reference/1.0/rule_components/) for detailed examples.

### 4) Hosts

Most everyone we talked to told us that the name Adapter didn't make much sense.  Much debate ensued.  Adapters are now called Hosts.  Please see [Hosts](/api/reference/1.0/hosts/) for detailed examples.