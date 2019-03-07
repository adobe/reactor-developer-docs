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

Open a browser and navigate to [https://console.adobe.io/](https://console.adobe.io/)

Ensure the correct organization selected in the drop-down under `Integrations`.

Click the **"New Integration"** button.

![](/images/access-token/IO-1.jpg)

Select **"Access an API"** and click **"Continue"**

![](/images/access-token/IO-2.jpg)

From the list of Adobe APIs, find the section titled **"Adobe Experience Platform"**. Under that section, select **"Experience Platform Launch API"**.

Leave the default option at the bottom as **"Access an API"** and click **"Continue"**

![](/images/access-token/IO-3.jpg)

Leave the **"New Integration"** option selected and click **"Continue"**

![](/images/access-token/IO-4.jpg)

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

![](/images/access-token/IO-5.jpg)

Next, select the **"Role"** or set of permissions for applications using this integration.

* **Admin** - can do everything
* **IT Admin** - can publish and manage properties, extensions, and environments
* **Developer** - can only modify existing entities
* **Approver** - can only modify and approve changes
* **Publisher** - can modify entities, approve changes, and publish changes to production environments
* **Extension Developer** - Can make changes and create new private and public extensions

**DETAILED PERMISSION TABLE**

|                     | Admin | IT Admin | Developer | Approver | Publisher | Extension Developer |
|---------------------|-------|----------|-----------|----------|-----------|---------------------|
| Develop             |   X   |          |     X     |     X    |     X     |          X          |
| Approve             |   X   |          |           |     X    |     X     |                     |
| Publish             |   X   |     X    |           |          |     X     |                     |
| Manage Properties   |   X   |     X    |           |          |           |                     |
| Manage Extensions   |   X   |     X    |           |          |           |                     |
| Manage Environments |   X   |     X    |           |          |           |                     |
| Develop Extensions  |   X   |          |           |          |           |          X          |


Click **"Create Integration"**

![](/images/access-token/IO-6.jpg)

{% alert info, Note %}
If an error is encountered, it's generally related to certificate generation issues.
{% endalert %}


## Testing the Integration

Navigate to the Integration in the [Adobe I/O Console](https://console.adobe.io/).

Click on the tab labeled “JWT”

![](/images/access-token/IO-7.jpg)

Use a text editor to open the private key file generated in the steps above.

Paste the contents of the private key file into the browser window in the text box labeled **"Paste private key"**.

Next, click **"Generate JWT"**.

Two boxes should now be visible.
  - The **LEFT** box contains a new access token valid for the integration.
  - The **RIGHT** box contains a sample cURL request that can be run in a terminal to test the integration.

Copy the sample cURL request into your terminal and execute it to verify the API call succeeds.

![](/images/access-token/IO-8.jpg)


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
