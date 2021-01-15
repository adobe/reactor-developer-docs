---
title: Overview
---

# RuleComponents

`Extensions`, `Rules`, and `DataElements` are building blocks.  When you want to make your application do something, these building blocks are added to a `Library`.

`Rules` control the behavior of the resources in your deployed `Library`.

`RuleComponents` are the individual items that make up a `Rule`.  If a `Rule` is a recipe, then a `RuleComponent` is one of the ingredients.

`RuleComponents` have 3 basic types:

1. Event - an event is the trigger for a rule.  The rule starts when the event occurs at runtime on the client device.  Library Load, Page Top, and Click are examples of Events.
1. Condition - a condition is an evaluation if certain criteria are met before the `Rule` actions are executed.  Once an Event occurs, conditions are evaluated.  The `Rule` actions will only execute if all conditions are met.  
1. Actions - these are the actions you want the rule to actually perform such as sending an Adobe Analytics beacon, retrieving a custom visitor ID, or firing a particular mbox.

Note: The Launch UI currently shows conditions and exceptions separately, but underneath they are identical.  An exception is just a `NOT` condition.

A `RuleComponent` belongs to exactly one `Rule`.  A `Rule` can (should) have many `RuleComponents`.

A `RuleComponent` is provided by exactly one `Extension`.  `Extensions` can provide many `RuleComponent` types.

Finally, `RuleComponents` are created by `POST`ing to a `Rule`, so before you can create `RuleComponents`, you must first create the `Rule` that they should belong to.

You can read more about rules and rule components in the [Rules section](https://docs.adobe.com/content/help/en/launch/using/reference/manage-resources/rules.html) of the Launch user docs.
