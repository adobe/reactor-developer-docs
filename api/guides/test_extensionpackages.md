---
title: Test ExtensionPackages
internal: true
---

# Test ExtensionPackages

To facilitate testing certain scenarios, some pre-configured ExtensionPackages
are automatically made available in non-production environments.


| ID                                     | Status        | Behavior                                       |
| ---                                    | ------        | --------                                       |
| `EP00000000000000000000000000000000` | `pending`   | ExtensionPackage `status` is `pending`     |
| `EP00000000000000000000000000000001` | `succeeded` | ExtensionPackage `status` is `succeeded` * |
| `EP00000000000000000000000000000002` | `failed`    | ExtensionPackage `status` is `failed`      |

* Refer to [Retrieve an Extension](/api/extensions/#retrieve-an-extension>) for
more information on which features are defined.


