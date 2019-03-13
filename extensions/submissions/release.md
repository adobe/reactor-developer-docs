---
title: Release an Extension
order: 7
---

# Release an Extension

Once you've completed testing and documenting, you are ready to release. There are currently two types of releases that you can perform:

- Private Release - Private release means that the completed extension is available to all properties within your company, but is not available to any other companies in Launch.
- Public Release - Public means that the completed extension is available in the public marketplace for all Launch users.

**Note**: Once you have released your extension, you can no longer make changes to it and you cannot unrelease it.  Once released, bug fixes and feature additions are accomplished by `POST`ing a new version of your extension package and following the above testing and release steps on that new version.

You must release your extension as a private extension before you can release it publicly.

## Release - Private

You release your extension package as private by `PATCH`ing your `extension_package` resource and supplying a payload with an instruction to make the `extension_package` private.

Currently, this is accomplished by making the API request directly.  You can use a tool like Postman or you can use something like this in your command line:

```bash
curl -X PATCH \
  https://reactor.adobe.io/extension_packages/[PACKAGE-ID] \
  -H 'accept: application/vnd.api+json;revision=1' \
  -H 'content-type: application/vnd.api+json' \
  -H 'authorization: Bearer [TOKEN]' \
  -H 'cache-control: no-cache' \
  -H 'x-api-key: Activation-DTM' \
  -d \
'
{
    "data": {
        "id": "[PACKAGE-ID]",
        "type": "extension_packages",
        "meta": {
            "action": "release_private"
        }
    }
}
'
```

`[PACKAGE-ID]` should be replaced by the ID of your extension package.

`[TOKEN]`should be replaced with a bearer token generated inside the I/O Console.  In order to generate that, you should:

1. Go back to the [Adobe IO Console](https://console.adobe.io/).
2. Select your Org and click on your integration (technical account).
3. Click on "JWT" at the top.
4. Back at your command prompt or terminal window, type `cat stage_reactor_qe_test_private.key` (or whatever you named your private key)
5. Copy the key value and paste it into the "Paste private key" field on the JWT page in your browser (you can include the `Begin` and `End` lines of the private key). Click "Generate JWT"
6. Click "Copy" under the "Sample CURL command" section and paste it into your command prompt or terminal window
7. You should now see "token_type": "bearer", and your "access_token" value in your terminal.
8. The value of the bearer access token is what you will use in your API calls to upload and patch your extension packages. We suggest you save the bearer token value, Adobe access tokens are valid for 24 hrs.

For more details, see [Release Private](/api/reference/1.0/extension_packages/release_private/) in the API docs.

## Release - Public

Once you have completed the private release, you can ask Adobe to release it publicly.  This will make your extension available in the public catalog.  Any Launch user can install your extension to any property.

Please complete the [Public Release Request Form](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=7DRB5U) to begin the release process.