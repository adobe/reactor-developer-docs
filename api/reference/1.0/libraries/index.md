---
title: Overview
---

# Libraries

A `Library` is a collection of resources (`Extensions`, `Rules`, and `DataElements` that represent the desired behavior of a `Property`.

The publishing process in Launch consists of building a `Library`, testing the resulting `Build` in an `Environment`, and promoting that `Library` to the next stage of the process until it finally reaches the Production `Environment`. 

There are two basic things to think about:
1. Workflow state
1. Attached environment

Every `Library` has a `state` that identifies what stage of the process it is at.  The `state` also determines the available `actions` and assignable environments.

The `Library` is transitioned to different `states` of the workflow by supplying an `action` in the `meta` of a request.

Depending on the `state`, `Environments` of different types can then be assigned to the `Library`, the `Library` can be built and tested, and then moved to the next stage in the workflow.

| Library State | Description | Can Add Resources | Available Actions | Assignable Environments |
| ------------- | ----------- |:-----------------:| ----------------- | ----------------------- |
| development | The `Library` is editable | Yes | `submit`, `approve` | Development
| submitted | The `Library` has been submitted for review | No | `approve`, `reject` | Staging |
| approved | The `Library` has been reviewed and approved for publishing | No | `reject` | n/a |
| rejected | The `Library` has been rejected | No | `develop` | Development |
| published | The `Library` has been published to Production | No | n/a | Production |

You may only add resources to a `Library` which is `development`.  `Submitted` and `Approved` `Libraries` may be transitioned to `rejected`.  Rejected `Libraries` may be transitioned back to `development` for additional changes and submitted for another review.

Putting this altogether, a sample publishing flow might look something like this:
1. Create a new `Library` (new `Libraries` are created in the `development `state`)
1. Assign `Library` to any available Development `Environment`
1. Build
1. Test
1. Submit `Library` (transition to `submitted` `state`)
1. Assign `Library` to the Staging `Environment`
1. Build
1. Test
1. Approve (transition to `approved` `state`)
1. Assign `Library` to the Production `Environment`
1. Build

Note: Building to the Production environment will automatically transition the Library to `published` `state`, you do not have to transition it manually.

A `Library` belongs to exactly one `Property`.  A `Property` can have many `Libraries`.

You can read more about `Libraries` and their `states` in the [Approval Workflow section](https://docs.adobe.com/content/help/en/launch/using/reference/publish/approval-workflow.html) of the Launch user docs.
