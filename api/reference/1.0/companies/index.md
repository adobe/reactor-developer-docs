---
title: Overview
---

# Companies

A `Company` represents a customer organization, typically a business.  In Launch, these companies match 1:1 with Adobe Org ID.  API users will only have visibility into the `Companies` to which they have access.  

Nearly all API usage is performed using an Integration in Adobe I/O which is scoped to a single Adobe Org, so most API users shouldn't expect to use the `Companies` resource as a major part of their workflow.  For most use cases, you'll start with a `Property`.

`Companies` may contain many `Properties`.  A `Property` belongs to exactly one `Company`.