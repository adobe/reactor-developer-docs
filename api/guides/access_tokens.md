---
title: Access Tokens
---

# Access Tokens

## JWT

[JSON Web Tokens](https://jwt.io) (JWT) are an open, industry standard RFC 7519 method for representing claims securely between two parties.

Communication with the Launch API occurs through the [Adobe I/O gateway](https://www.adobe.io/), and requires the use of JWT-based access tokens.

{% alert info, Prerequisites %}
- A terminal appliation on Mac/Linux/UNIX or a Command Line Window on Windows.
- An Adobe Experience Cloud admin to have granted your Adobe user access to the Adobe I/O Console.
{% endalert %}

## Adobe I/O Integration

Access to the Launch APIs requires the creation of an Integration via Adobe I/O.

### Create a new integration

Open a browser and navigate to [https://console.adobe.io/](https://console.adobe.io/).  From the home screen, click on "Integrations" in the top nav.

Click the **"New Integration"** button.

![](/images/access-token/IO-1.png)

Select **"Access an API"** and click **"Continue"**

![](/images/access-token/IO-2.png)

If your user account has access to multiple organizations, ensure the correct organization is selected in the drop-down under `Integrations`.

From the list of Adobe APIs, find the section titled **"Adobe Experience Platform"**. Under that section, select **"Experience Platform Launch API"** and click **"Continue"**

![](/images/access-token/IO-3.png)

On this next screen, define the configuration settings for the integration.

Give it a descriptive **Name** and a detailed **Description** for others to easily identify this application and its purpose

#### Generate a certificate

Next, generate an SSL private key and a public certificate.

##### macOS & Linux / UNIX

Open a terminal application (Terminal.app, for example). Using OpenSSL, generate a new SSL certificate and key.
```bash
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout private.key -out adobe-io-public.crt
```

##### Windows

Download an OpenSSL client to generate public certificates; For example, [OpenSSL Windows client.](https://bintray.com/vszakats/generic/download_file?file_path=openssl-1.1.1-win64-mingw.zip)

Extract the folder and copy it to `C:/libs`

Open a command line window and execute the following:

```bash
set OPENSSL_CONF=C:/libs/openssl-1.1.1-win64-mingw/openssl.cnf
cd C:/libs/openssl-1.1.1-win64-mingw/
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout private.key -out adobe-io-public.crt
```

These commands will create two files in the current directory _(usually the current user's home directory)_.

{% alert info, Note %}
The names of the files maybe changed as desired. Keep the private key safe and limit access!
{% endalert %}

  
Next, upload the certificate (**crt**) file via the Adobe I/O configuration window by either drag-n-drop or select to upload.

{% alert info, Note %}
Multiple certificates may be added.
{% endalert %}

![](/images/access-token/IO-5.png)

Next, we need to assign rights to this Integration.  These integrations share the same permissions that can be assigned to users through the Admin Console.  Any product profiles that exist for Launch will show up in the list at the bottom of the page.  Select the product profile that is appropriate for this integration.

If you need help creating a new product profile, an Org Admin or a Product Admin for Launch can do this is in the Admin Console where users are managed.  You can read more about this in the user docs [here](https://docs.adobe.com/content/help/en/launch/using/reference/admin/user-permissions.html#n3-create-your-product-profile).

Click **"Create Integration"**.  You should now see the success screen.

![](/images/access-token/IO-6.png)

{% alert info, Note %}
If an error is encountered, it's generally related to certificate generation issues.
{% endalert %}

## Testing the Integration

Click **Continue to integration details**.

Click on the tab labeled “JWT”

![](/images/access-token/IO-7.png)

Use a text editor to open the private key file generated in the steps above.

Paste the contents of the private key file into the browser window in the text box labeled **"Paste private key"**.

Next, click **"Generate JWT"**.

Two boxes should now be visible.
  - The **LEFT** box contains a new access token valid for the integration.
  - The **RIGHT** box contains a sample cURL request that can be run in a terminal to test the integration.

Copy the sample cURL request into your terminal and execute it to verify the API call succeeds.

![](/images/access-token/IO-8.png)


## Using Access Tokens in Launch

The sample cURL request from the previous step demonstrates exchanging the JWT for an access token, returned as
`access_token` in the response, for use in Launch.

The Launch API requires an `Authorization` header, with the access token supplied as the `Bearer` in requests.

For example, `Authorization: Bearer [TOKEN]`

{% alert info, Note %}
An access token will typically expire after 24 hours.
{% endalert %} 

## Additional Resources

JWT Libraries and SDKs: [https://jwt.io/](https://jwt.io/)

Postman API development: [https://www.getpostman.com/](https://www.getpostman.com/)
