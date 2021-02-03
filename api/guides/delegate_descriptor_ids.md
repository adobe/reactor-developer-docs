---
title: Delegate Descriptor IDs
---

# Understanding Delegate Descriptor IDs 

When a data element, condition, event, or action is associated with an extension package, that resource is considered a "delegate" of that package. Each delegate within an extension package is given a unique delegate descriptor ID.

A delegate descriptor ID consists of three strings joined by double-colon characters (`::`), representing the extension package name, the delegate type, and the delegate name, respectively. For example, if an extension package `example-package` had an action named `custom-code`, that action would have the following delegate descriptor ID: `example-package::actions::custom-code`.

Delegate descriptor IDs are important to understand when it comes to defining rule components, data elements, and extensions in the API. The sections below outline how these IDs come into play for each resource.

## Rule components

A [rule component](/api/reference/1.0/rule_components/index/) must be associated with an event, condition, or action that belongs to an extension package. This represents the rule component's "type" as it pertains to the logic of the overall rule. Therefore, when creating a rule component, a delegate descriptor ID must be provided to indicate which event, condition, or action the rule component should be associated with.

For example

See the guide on [creating a rule component in the API](/api/reference/1.0/rule_components/create/) for more information on the payload attributes required to define a rule component.

## Data elements

See the guide on [creating a data element in the API](/api/reference/1.0/data_elements/create/) for more information.

## Extensions

See the guide on [creating a extension in the API](/api/reference/1.0/extensions/create/) for more information.