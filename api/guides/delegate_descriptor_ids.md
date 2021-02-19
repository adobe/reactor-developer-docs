---
title: Delegate Descriptor IDs
---

# Understanding Delegate Descriptor IDs 

When a data element, condition, event, or action is associated with an extension package, that resource is considered a "delegate" of that package. Each delegate within an extension package is given a unique delegate descriptor ID. The delegate descriptor ID for a particular resource allows Adobe Experience Platform Launch to determine what kind of resource it is and which extension package it belongs to.

A delegate descriptor ID consists of three strings joined by double-colon characters (`::`), representing the extension package name, the delegate type, and the delegate name, respectively.

For example, if an extension package named `example-package` had an action named `custom-code`, that action would have the following delegate descriptor ID: `example-package::actions::custom-code`.

Delegate descriptor IDs are important to understand when it comes to defining rule components, data elements, and extensions in the API. The sections below outline how these IDs come into play for each resource.

## Rule components

A [rule component](/api/reference/1.0/rule_components/index/) must be associated with an event, condition, or action that belongs to an extension package. This represents the rule component's "type" as it pertains to the logic of the overall rule (an event, a condition, or an action). Therefore, when creating a rule component, a delegate descriptor ID must be provided to indicate which event, condition, or action the rule component should be associated with.

For example, to create an event rule component that is based on a `click` event in an extension package `example-package`, the rule component would use the following `delegate_descriptor_id` value: `example-package::events::click`.

See the guide on [creating a rule component in the API](/api/reference/1.0/rule_components/create/) for more information on the payload attributes required to define a rule component.

## Data elements

A [data element](/api/reference/1.0/data_elements/index/) must be associated with an extension package when it is first created, as each extension package defines the compatible types for its delegate data elements.

For example, to create a data element that uses the `cookie` type as defined by a the extension package `example-package`, the data element would use the following `delegate_descriptor_id` value: `example-package::dataElements::cookie`.

See the guide on [creating a data element in the API](/api/reference/1.0/data_elements/create/) for more information.

## Extensions

An [extension](/api/reference/1.0/extensions/index/) can optionally be associated with an extension package when it is first created. While you can define an extension separately from an extension package in the API, the extension must be associated with an extension package in order to utilize rule components and data elements.

For example, to assign the extension `example-extension` to the extension package `example-package`, the extension would use the following `delegate_descriptor_id` value: `example-package::extensions::example-extension`.

See the guide on [creating an extension in the API](/api/reference/1.0/extensions/create/) for more information.