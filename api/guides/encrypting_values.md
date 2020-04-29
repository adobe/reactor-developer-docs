---
title: Encrypting Values
---

# Encrypting Values

Some portions of the Launch platform require supplying sensitive values.
For example, providing a private key to be used in the delivery of libraries to
Environments via Hosts. The sensitive nature of those credentials necessitates
secure transfer and storage.

The Launch platform achieves this with GPG encryption and decryption.
GPG encrypts sensitive values so only the Launch platform can read them.


## Obtain the public GPG key

Obtain the public GPG key for the desired environment.

| Environment | API   | UI   | Key           | SHA512 Sum  |
| ----------- | ----- | ---- | ------------- | ----------- |
| Production  | reactor.adobe.io             | [launch.adobe.com](https://launch.adobe.com) | [Get Production GPG key](/files/launch@adobe.com_pub.gpg) | [Checksum](/files/launch@adobe.com_pub.gpg.sum) |

## Import the key

Add the key to your GPG keychain.

Syntax:

```bash
gpg --import [KEY_NAME]
```

Example:

```bash
gpg --import launch@adobe.com_pub.gpg
```

## Encrypt values

Encrypting values is fairly straightforward.

```bash
echo -n 'Example value' | gpg --armor --encrypt -r "Adobe Launch Data Encryption <launch@adobe.com>"
```

Breaking down this command:

- Input is supplied to the `gpg` command.
- `--armor` creates ASCII-armored output instead of binary. This simplifies
  transferring the value through JSON.
- `--encrypt` instructs GPG to encrypt the data.
- `-r` sets the recipient for the data. Only the recipient, the holder of the
  private key that corresponds to the public key, may decrypt the data. The
  recipient name of the desired key may be found by examining the output of
  `gpg --list-keys`.

The above command would use the public key for
`Adobe Launch Data Encryption <launch@adobe.com>` to encrypt the value,
`Example value`, in ASCII-armored format.

The output of the command would resemble the following:

```
-----BEGIN PGP MESSAGE-----

hQIMAxJHCI6fydT/ARAAwQ0Y0k7eSAbd0T9seoaWX75G70O2gxAF20KY5FWiZ9/m
/RkgJwhJusZyEdazC/CmAdfXi9bsVxQT0i06ErUxXfQF0VtweRlcyRBsxzLz6Hr+
BpYGnq+cCCzGAT73Gg1CM4UWmaPKLLyWKGkXtDBAqVBRAIQT/8JhnkbyWIohHkWV
I/Uf7NrPXuaSmrqZ1SZQgwjIM3qNMR02qtqg59dncKoCQBji8Oeb8lqRLskRT0Jq
gVgbJYwSe2n6KpJkELJ6QtF9lCRl1+yU4mvM4jBHgkM1+vb1WmbFRIR40dDpg85N
0J9hVj4bg//eLRDfAdEC9kgq9Atph0WqJ5EpehdS7yVO9lO8mpbpqZ4BCGjTi/VS
isEPr6eZ2mxRbk8f9Z4csRZnkErY8ep5+cqC5CZVdmguWvC9PKzXqEsPFd0PSYk3
Qp3UIW2/JMf16E5CKmntm+gKdl6kggZOOvNQuyJYa9yNbzySPerHXsknTOxV+QP/
WXwrAL52g5+gpMib7Ve/KBz5/OViDhDqkmHzlGad73W74d+CYjf0AnuXuWRRlUMT
s8ORw1eplInldhXk2mgkGPZS/gWDs3zpKUu4GSO9AaeWldynLG/Bgh78XhumQ58h
ekGD+p3PyyvxjfS5G/wf9HQZ085+mnjpKFa7fuFBQPbg4WpBadhWrhobthC+hN3S
SAE9yWU11Y3xpoxqg4y7iYZ6rnX+qP2oUNYxC2/hdhsFbbZtUh4s51qaoLbe0iWB
OUoIPf4KxTaboHZOEy32ZBng5heVrn4i9w==
=jrfE
-----END PGP MESSAGE-----
```

The output would only be decryptable by systems that have the private key that
corresponds to the `Adobe Launch Data Encryption <launch@adobe.com>` public key.

This output is the value that should be supplied in a request to the Launch
platform. The Launch platform would store this encrypted output it and
temporarily decrypt it as necessary. For example, the Launch platform would
decrypt Host credentials long enough to initiate a connection to the server
and immediately remove all traces of the decrypted value.

{% alert info, Reminder %}
The format of the armored, encrypted value is important. Ensure line returns are
properly escaped in the value supplied in the request.
{% endalert %}
