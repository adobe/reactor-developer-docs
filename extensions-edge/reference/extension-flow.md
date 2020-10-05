---
title: Extension Flow
order: 5
---

# Extension Flow

As described previously, each condition, action, and data element type has both a view which allows users to modify settings and a library module to act upon those user-defined settings. As the following high-level diagram shows, the extension's event type view will be shown inside an iframe within the Launch application. The user then uses the view to modify settings which are then saved to Launch's data storage. When the Launch runtime library is built, both the extension's event type library module as well as the user-defined settings will be included in the runtime library that will get deployed on a edge node. At runtime, Launch will inject the user-defined settings into the library module.

![extension flow diagram](/images/extension-flow-edge.png)

In the following diagram you can see how an event is processed.

![event flow diagram](/images/event-processing-flow-edge.png)

After the engine and the container are built and deployed on the edge, the edge node can start receiving events. Once an event is received on the edge, all the rules from the container are executed in parallel.

One rule is a chain of one or multiple condition or actions modules. The conditions and actions modules that are composing a rule are executed in sequence. That means that one condition or action module doesn't execute until the previous condition or action module from the chain hasn't finish its work. In order to maintain the correct sequence, any module that needs to complete an async task can return a Promise. The promise must be fullfilled once the async task is complete.

The first module from each rule will receive a clone of the event. That means that any unintended side effect on the event will not affect all the rules.

In the following diagram you can see the link between conditions and actions inside the rule processing flow.

![rule processing flow diagram](/images/rule-processing-flow-edge.png)

The rule processing flow contains the following phases:

1. Launch passes `settings` into the rule’s condition library modules where conditions are evaluated.
2. Each condition library module returns whether a condition evaluates to true.
3. If all conditions pass, the rule’s actions are executed.
