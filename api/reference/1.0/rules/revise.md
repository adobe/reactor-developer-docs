---
title: Revise
---

# Revise a Rule

Revising a Rule is the action of creating a new revision of the rule with the
current (`head`) revision. A revision of a Rule will have its own Id. The
original Rule may be discovered via the `origin` link.

Revising a Rule will also revise each of its related RuleComponents. Each
revision of a RuleComponent will also have its own unique Id and will link to
the revision of the Rule.

Revising a Rule is achieved by supplying an `action` with a value of `revise`
in the `meta` of the request `data`.


{% form rule.patch %}

{% scenario rules.update rules.revise_a_rule %}
