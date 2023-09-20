---
title: Secrets
---

# Exchanging Secret credentials

The available secret types are: `oauth2-client_credentials`, `oauth2-jwt`, `oauth2-google`, `simple-http`, and `token`. The `credentials` object for each type has different required attributes.

## `oauth2-client_credentials` credentials

Only `client_credentials` grant type is supported.

### Credential attributes
- `client_id` - Text - Required - The client_id of the oauth2 integration
- `client_secret` - Text - Required - The client_secret of the oauth2 integration. Not included in the API response.
- `token_url` - Text - Required - The token url of the oauth2 integration.
- `refresh_offset` - Integer - Optional - The value, in seconds, used to offset the refresh operation. If not set, an implicit `14400` (4 hours) will be used
- `options` - Object - Optional - Key/Value pairs of options for the oauth2 integration


When an `oauth2-client_credentials` Secret is created or updated, a `POST` is made to the `token_url` with the client_id and client_secret (and possibly options), according to the `client_credentials` flow of the `oauth2` protocol. 
If the authorization service responds with `200 OK` and a JSON response body, the body is parsed and `access_token` and `expires_in` are used.
It is expected that the authorization service response body is compatible with the `oauth2` protocol.

A credentials exchange is considered successful if:
- `expires_in` is greater `28800` (8 hours)
- `refresh_offset` is less than `expires_in` - `14400`. (e.g. if the `expires_in` is `36000` (10h), and the `refresh_offset` is set to `28800` (8h), the exchange is considered failed because `28800` > `36000` - `14400`).

If the exchange is successful, the `Secret` status attribute is set to `succeeeded` and `expires_at` and `refresh_at` are set.
- `expires_at` is the current UTC time + `expires_in`.
- `refresh_at` is the current UTC time + `expires_in` - `refresh_offset`

In case of failure, the information is available in the `status_details` attribute from the `meta` object.

## `oauth2-jwt` credentials

### Credential attributes
- `iss` - Text - Required - The JWT issuer.
- `aud` - Text - Required - The JWT audience.
- `sub` - Text - Optional - The JWT subject.
- `ttl` - Integer - Required - The JWT ttl. The `exp` claim is computed using this value.
- `alg` - Text - Required - The algorithm used to sign the JWT. Currently, only `RS256` is supported.
- `custom_claims` - Object - Optional - Key/Value pairs of JWT custom claims.
- `token_url` - Text - Optional - The token url of the oauth2 integration. If this value is not included, the JWT will be used as `access_token`.
- `private_key_id` - Text - Optional - The private key id. This value will be added to the `kid` JWT header.
- `private_key` - Text - Required - The private key used to sign to JWT.
- `refresh_offset` - Integer - Optional - The value, in seconds, used to offset the refresh operation. If not set, an implicit `1800` (30 minutes) will be used.
- `options` - Object - Optional - Key/Value pairs of options for the oauth2 integration.

When an `oauth2-jwt` Secret is created or updated, a JWT is created and signed using the private_key. If `token_url` is present, a `POST` is made to the `token_url` with the assertion parameter and JWT value (and possibly options), according to the `rfc7523` standard.
If the authorization service responds with `200 OK` and a JSON response body, the body is parsed and `access_token` and `expires_in` are used.
It is expected that the authorization service response body is compatible with the `oauth2` protocol.

If `token_url` is not present, the generated JWT is used as `access_token` and the `ttl` as `expires_in`.

If the exchange is successful, the `Secret` status attribute is set to `succeeeded` and `expires_at` and `refresh_at` are set.
- `expires_at` is the current UTC time + `expires_in`.
- `refresh_at` is the current UTC time + `expires_in` - `refresh_offset`

In case of failure, the information is available in the `status_details` attribute from the `meta` object.

## `oauth2-google` credentials

### Credential attributes
- `scopes` - Array - Required - The scopes for the google authorization. The allowed scope values are `https://www.googleapis.com/auth/adwords`, and `https://www.googleapis.com/auth/pubsub`. At least one scope has to be added.

When an `oauth2-google` Secret is created or updated, it has a `manual_authorization` status, `authorization_url`, and `authorization_url_expires_at` fields in the `meta` object. In order to process the secret, the `authorization_url` value has to be loaded in a browser and the the Google authorization flow has to be completed. The `authorization_url` value is valid until `authorization_url_expires_at`.
If the `authorization_url` expires, the secret has to be reauthorized. The `authorization_url`, and `authorization_url_expires_at` fields are displayed only once, after the `Secret` creation or update.

If the Google authorization flow is successful, the `Secret` status attribute is set to `succeeeded` and `expires_at` and `refresh_at` are set.
- `expires_at` is the current UTC time + `1h`.
- `refresh_at` is the current UTC time + `30m`

In case of failure, the information is available in the `status_details` attribute from the `meta` object.

## `simple-http` credentials

### Credential attributes
- `username` - Text - Required - Username
- `password` - Text - Required - Password. Not included in the API response.

The exchange consist of transforming the username and password to a BASE64 encoding of "`username`:`password`"
After the exchange, `expires_at` and `refresh_at` will be `null`.

## `token` credentials

### Credential attributes
- `token` - Text - Required - A secret token

There is no exchange needed for these credentials and `expires_at` and `refresh_at` will be `null`.

# Environment relationship

A `Secret` can only be associated with one environment. Once the relationship between a secret and an environment is established, it cannot be modified* (the secret cannot be cleared from the environment, the secret cannot be associated with a different environment).

\* If the environment is deleted, relationship is cleared and the secret can be associated to a different environment.  

After the credentials exchange, for a `Secret` associated with an environment, the exchange artifact (the access_token for `oauth2`, BASE64 encoded string for `simple-http`, and the token for `token`) are securely saved on the environment and are accessible through a `Secret` Data Element.
After the successful save of the exchange artifact on the environment, the attribute `activated_at` is set to the current UTC time.

# Refreshing an oauth2 Secret

If an `oauth2` Secret has an `Environment` associated and it has `succeeded` status (the credentials were exchanged successfully), an exchange is performed automatically on `refresh_at`.
If the exchange is successful, the `refresh_status` attribute in the `meta` object is set to `succeeded` and `expires_at`, `refresh_at` and `activated_at` are updated accordingly.

If the exchange is failed, the operation is attempted 3 more times, with the last attempt no more than `2h` before the access token expires.

In case of failure, the information is available in the `refresh_status_details` attribute from the `meta` object. 

# Secret Data Element

A Secret can be used in a Library only through a Data Element of type `Secret`, available in the `Core` extension.
The `Secret` Data Element can configure secrets for each `Environment` stage, `Development`, `Staging`, and `Production`.

![](/images/secrets/secret-data-element.png)

If a Secret Data Element is added to a Library, a `succeeded` Secret has to be associated with the Environment on which the Library is being built.
- e.g. a Build will fail for a Library in `Staging`, if it has a Secret Data Element, but there is not succeeded secret configured for the `Staging Secret` section.

On runtime, the Secret Data Element is replaced with the corresponding secret exchange artifact (the access_token for `oauth2`, BASE64 encoded string for `simple-http`, and the token for `token`) saved on the Environment. 
