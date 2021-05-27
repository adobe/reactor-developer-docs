---
title: Overview
---

# Callbacks

There are times where operations are not immediate, or sometimes you'd like your systems to be notified of activity in Launch. For these cases, Launch provides `AuditEvents` and `Callbacks`.

An `AuditEvent` is a record of a specific change to a resource in Launch, generated at the time the change is made. A `Callback` is a message from Launch to a specific URL of your choice (usually hosted by you).

The basic workflow is for you to subscribe to specific `AuditEvents`.  Each time a new `AuditEvent` of that type is generated, a matching message will be sent to the URL specified by the `Callback`.

`Callback` URLs must be HTTPS.

Payloads are sent via `POST` to the URL specified in the `Callback`.

`Callbacks` may subscribe to any `AuditEvent` `type`.

The service behind the URL specified in the `Callback` must respond with a
`200 OK` or `201 Created` status code. If the service does not respond with a
`200 OK` or `201 Created` status code, the message delivery will be retried at
the following intervals.

- 1 min
- 5 min
- 30 min
- 1 hr
- 12 hr
- 1 day
- 3 days

{% alert info, Note %}
Retry intervals are relative to the previous interval. For example, if the retry
at 1 minute fails, the next attempt will be scheduled for 5 minutes after the
1 minute attempt fails (6 minutes after the message was generated).
{% endalert %}

Once all delivery attempts have been exceeded, the message is discarded.

A `Callback` belongs to exactly one `Property`.  A `Property` can have many `Callbacks`.  When you delete a `Property`, its `Callbacks` are also deleted.  `Callbacks` can be created for all resources within a `Property`, but not for the `Property` itself.
