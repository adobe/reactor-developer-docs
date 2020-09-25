---
title: Authenticate to the Launch API
---

# Authenticate to the Launch API

In order to use the Launch API, each request must include the following authentication headers:

* `Authorization: Bearer [TOKEN]`
* `x-api-key: [KEY]`
* `x-gw-ims-org-id: [ORG_ID]`

This guide covers how to use the Adobe Developer Console to gather the values for each of these headers so you can start making calls to the Launch API.

## Gain developer access to Adobe Experience Platform

Before you can generate authentication values for the Launch API, you must have developer access to Experience Platform. To gain developer access, follow the beginning steps in the [Experience Platform authentication tutorial](https://docs.adobe.com/content/help/en/experience-platform/tutorials/authentication.html). Once you arrive at the step "Generate access credentials in Adobe Developer Console", return to this tutorial to generate the credentials specific to Launch.

## Generate access credentials

Using Adobe Developer Console, you must generate the following three access credentials:

* `[ORG_ID]`
* `[KEY]`
* `[TOKEN]`

Your IMS Organization's ID (`[ORG_ID]`) and API key (`[KEY]`) only need to be generated once and can be reused in future API calls. However, your access token (`[TOKEN]`) is temporary and must be regenerated every 24 hours.

The steps for generating these values are covered in detail below.

### One-time setup

Go to [Adobe Developer Console](https://www.adobe.com/go/devs_console_ui) and sign in with your Adobe ID. Next, follow the steps outlined in the tutorial on [creating an empty project](https://www.adobe.io/apis/experienceplatform/console/docs.html#!AdobeDocs/adobeio-console/master/projects-empty.md) in the Developer Console documentation.

Once you have created a new project, click **Add API** on the **Project Overview** screen.

![](/images/access-token/add-api-button.png)

The **Add an API** screen appears. Select **Experience Platform Launch API** from the list of available APIs before clicking **Next**.

![](/images/access-token/add-launch-api.png)

On the next screen, you are prompted to create a JSON Web Token (JWT) credential be either generating a new keypair or uploading your own public key. For this tutorial, select the **Generate a key pair** option, then select **Generate keypair** in the bottom-right corner.

![](/images/access-token/create-jwt.png)

The next screen confirms the keypair has successfully generated, and a compressed folder containing a public certificate and a private key is automatically downloaded to your machine. You will need this private key in a later step to generate an access token.

Select **Next** to continue.

![](/images/access-token/keypair-generated.png)

The next screen prompts you to select the product profile(s) to associate with the API integration.

{% alert info, Note %}
Product profiles are managed by your organization through the Adobe Admin Console, and contain specific sets of permissions for granular features in Adobe Experience Platform Launch. Product profiles and their permissions can only be managed by users with administrator privileges within your organization. If you are unsure which product profile(s) to select for the API, contact your administrator.
{% endalert %}

Select the desired product profile(s) from the list, then select **Save configured API** to complete the API registration.

![](/images/access-token/select-product-profile.png)

Once the API has been added to the project, the project page reappears on the Experience Platform Launch API page. From here, scroll down to the **Service Account (JWT)** section, which provides the following access credentials that are required in all calls to the Launch API:

* **CLIENT ID**: The Client ID is the required `[KEY]` which must be provided in the `x-api-key` header.
* **ORGANIZATION ID**: The Organization ID is the `[ORG_ID]` value that must be used in the `x-gw-ims-org-id` header.

![](/images/access-token/access-creds.png)

### Authentication for each session

Now that you have your `[KEY]` and `[ORG_ID]` values, the final step is generating a `[TOKEN]` value.

{% alert info, Note %}
Note that these tokens expire after 24 hours.  If you are using this integration for an application, it is a good idea to obtain your bearer token programmatically from within your application.
{% endalert %}

You have two options to generate your access tokens, depending on your use case:

* [Generate tokens manually](#generate-access-tokens-manually)
* [Generate tokens programmatically](#generate-access-tokens-programmatically)

#### Generate access tokens manually

Open the private key you downloaded earlier in a text editor or browser and copy its contents. Then, navigate back to the Developer Console and paste the private key in the **Generate access token** section on the Launch API page for your project before selecting **Generate Token**.

![](/images/access-token/paste-private-key.png)

A new access token is generated, and a button to copy the token to your clipboard is provided. This value is used for the required `Authorization` header, and must be provided in the format `Bearer [TOKEN]`.

![](/images/access-token/token-generated.png)

#### Generate access tokens programmatically

If you are using your Launch integration for an application, you can programmatically generate access tokens through API requests. In order to accomplish this, you must obtain the following values:

* Client ID (`[KEY]`)
* Client secret (`[CLIENT_SECRET]`)
* A JSON Web Token (`[JWT]`)

Your client ID and secret can be obtained from the main page for your project, as seen in the [previous step](#one-time-setup).

![](/images/access-token/auto-access-creds.png)

To obtain your JWT credential, navigate to **Service Account (JWT)** in the left navigation, then select the **Generate JWT** tab. On this page, under **Generate custom JWT**, paste the contents of your private key into the provided textbox, then select **Generate Token**.

![](/images/access-token/generate-jwt.png)

The generated JWT appears below once it has finished processing, along with a sample cURL command that you can use to test the token if you wish. Use the **Copy** button to copy the token to your clipboard.

![](/images/access-token/jwt-generated.png)

Once you've gathered your credentials, you can integrate the API call below into your application in order to programmatically generate access tokens.

**Request**

The request must send a `multipart/form-data` payload, providing your authentication credentials as shown below:

```shell
curl -X POST \
  https://ims-na1.adobelogin.com/ims/exchange/jwt/ \
  -H 'Content-Type: multipart/form-data' \
  -F 'client_id=[KEY]' \
  -F 'client_secret=[CLIENT_SECRET]' \
  -F 'jwt_token=[JWT]'
```

**Response**

A successful response returns a new access token, as well as the number of seconds left until it expires.

```json
{
  "token_type": "bearer",
  "access_token": "[TOKEN]",
  "expires_in": 86399999
}
```

| Property | Description |
| :-- | :-- |
| `access_token`   | The newly generated access token value. This value is used for the required `Authorization` header, and must be provided in the format `Bearer [TOKEN]`. |
| `expires_in`   | The remaining time until the token expires, in seconds. Once a token expires, a new one must be generated. |

## Next steps

By following the steps in this tutorial, you should have a valid values for `[ORG_ID]`, `[KEY]`, and `[TOKEN]`. You can now test these values by using them in a simple cURL request to the Launch API.

Start by attempting to make an API call to [list all companies](../../reference/1.0/companies/list). 

{% alert info, Note %}
You may not have any companies in your organization, in which case the response will be HTTP status 404 (Not Found). As long as you do not get a 403 (Forbidden) error, your access credentials are valid and working.
{% endalert %}

Once you confirm that your access credentials are working, continue to explore the other API reference documentation to learn the API's many capabilities.

## Additional Resources

JWT Libraries and SDKs: [https://jwt.io/](https://jwt.io/)

Postman API development: [https://www.postman.com/](https://www.postman.com/)
