---
title: Delegate Descriptor IDs
---

# Understanding Delegate Descriptor IDs 

All functionalities that you can deploy on your site through Adobe Experience Platform Launch are provided by extensions. The capabilities provided by each extension are defined by the extension developer. When an extension is deployed, it is bundled with its various capabilities in the form of an extension package. The functionalities that developers add to an extension package are considered "delegates" of that package.


Each delegate within an extension package is given a unique delegate descriptor ID. The delegate descriptor ID for a particular resource allows Adobe Experience Platform Launch to determine what kind of resource it is and which extension package it belongs to.

A delegate descriptor ID consists of three strings joined by double-colon characters (`::`), representing the extension package name, the delegate type, and the delegate name, respectively. These strings are composed to be human-readable, and are automatically generated and assigned by Platform Launch when an extension package is ingested.

For example, if an extension package named `example-package` has an action named `custom-code`, that action would have the following delegate descriptor ID: `example-package::actions::custom-code`.

Delegate descriptor IDs are important to understand when it comes to defining rule components (events, conditions, and actions) and data elements in the API. The sections below outline how these IDs come into play for each resource.

## Rule components

A [rule component](/api/reference/1.0/rule_components/index/) must be associated with an event, condition, or action that belongs to an extension package. This represents the rule component's "type" as it pertains to the logic of the overall rule (an event, a condition, or an action). Therefore, when creating a rule component, a delegate descriptor ID must be provided to indicate which event, condition, or action the rule component should be associated with.

For example, to create an event rule component that is based on a `click` event in an extension package `example-package`, the rule component would use the following `delegate_descriptor_id` value: `example-package::events::click`.

See the guide on [creating a rule component in the API](/api/reference/1.0/rule_components/create/) for more information.

## Data elements

A [data element](/api/reference/1.0/data_elements/index/) must be associated with an extension package when it is first created, as each extension package defines the compatible types for its delegate data elements, as well as their intended behavior.

For example, to create a data element that uses the `cookie` type as defined by a the extension package `example-package`, the data element would use the following `delegate_descriptor_id` value: `example-package::dataElements::cookie`.

See the guide on [creating a data element in the API](/api/reference/1.0/data_elements/create/) for more information.

## Extensions

An [extension](/api/reference/1.0/extensions/index/) is automatically associated with an extension package when it is first created, and is represented within the extension's `relationships` object. If your extension requires custom settings, then it also requires a delegate descriptor ID.

>[!NOTE]
>
>Extensions that do not require custom settings to not need a delegate descriptor ID.

For example, to add a delegate descriptor ID to an extension that belongs to the extension package `example-package`, the extension would use the following `delegate_descriptor_id` value: `example-package::extensionConfiguration::config`.

See the guide on [creating an extension in the API](/api/reference/1.0/extensions/create/) for more information.