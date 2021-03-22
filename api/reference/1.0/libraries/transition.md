---
title: Transition
---

# Transition a Library

Libraries must progress through the publishing workflow to be properly tested
and approved for publishing. This is achieved by transitioning the library state
via an `action` supplied in the `meta` of a request.

### Library states:
<br>

#### `development`

The Library is editable.

Available actions: `submit`, `approve`

#### `submitted`

The Library has been submitted for review.

Available actions: `approve`, `reject`

#### `approved`

The Library has been approved for publishing.

Available actions: `reject`

#### `rejected`

The Library was rejected. Rejected libraries may be transitioned back to
`development` for additional changes and submitted for another review.

Available actions: `develop`

#### `published`

The Library has been published.


{% form libraries.patch %}

{% scenario libraries.update libraries.transition_a_library %}
