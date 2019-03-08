---
title: Getting Started
---

To write an extension for Launch, we need to make sure your Adobe Experience Cloud Organization is set up properly, and that developers on your team have the correct permissions. Your extension project (extension package) should be ready for uploading to our system, and of course you'll need to be familiar with the Launch user interface. In this guide we'll walk through all the steps and links to all the resources you need to start your own extension project.

# Getting Started Guide - Table Of Contents
{:.no_toc}

* TOC
{:toc}

## Get Your Company Set Up

### Your Experience Cloud Account

The first step is to confirm you have access to an Experience Cloud Organization.  This will enable you to login to the Experience Cloud, to create a product profile, to assign user permissions to your team, and to use Adobe Experience Cloud products. You can get an Experience Cloud Organization as a customer or a partner.

Customers already have an Experience Cloud Organization that's created when contracts are signed. You can use this for extension development.

Partners can have an Experience Cloud Organization created by joining one of Adobe's Partner Programs.

* **Exchange Partner Program** - This program is for partners who have technology that's complimentary to Adobe and can be integrated with Adobe technologies to add value to our mutual customers. This program maintains a [marketplace](https://www.adobeexchange.com/experiencecloud.html) where partners can create listings that promote their integrations. You can see the registration guide [here](https://partners.adobe.com/exchangeprogram/experiencecloud/reg-guide.html) and you can begin your registration [here](https://partners.adobe.com/exchangeprogram/experiencecloud/prereg.html).  **You must be a member of this program in order to create public Launch extensions and listings that will show in the marketplace.**
* **Solution Partner Program (SPP)** – This program is for consulting firms that help Adobe customers make the most of their investments and partners that resell Adobe solutions. You can register for the Solution Partner Program and check out our information on how to join if you have any questions. See the registration guide [here](https://spark.adobe.com/page/7PKZzIJJjkcDd/) or begin your registration [here](https://solutionpartners.adobe.com/home.html).

**Note** - Solution Partners must also [register](https://partners.adobe.com/exchangeprogram/experiencecloud/prereg.html) for the Exchange Partner Program as the Exchange agreement contains the terms and conditions for Launch extension development.

Before you complete your Exchange registration, please email the Exchange admin at <ExchangeHelpEC@adobe.com> and explain that you are registering so that you can promote your Launch extension. If you don't do this, they will likely deny your application and suggest you are a better fit for the SPP. **Please note** that currently your corporate email can only be used in one partner program at a time, so you will need to use a different corporate email as the registered contact for each of the programs. It's "sub-optimal", we know. Sorry about that.

Once your company is in the Exchange Partner program, you can request access to Adobe Solutions by signing in to the [Exchange Partner Site](https://partners.adobe.com/exchangeprogram/experiencecloud) and following the steps below. If you already have an Experience Cloud Account and access to solutions, but you don't have access to Launch, please see the instructions for setting up groups and users [here](https://docs.adobelaunch.com/administration/users).

### Create a Listing in the Exchange Partner Portal (required)

Extensions created for public release are required to have a listing in the [Exchange Marketplace](https://experiencecloud.adobeexchange.com/). These listings enable extension developers to post support information, links to additional support or documentation, and to market your extensions to prospective users who may not be aware of your company or the functionality of your extension. In this marketplace, your extension will have a public listing that can be viewed without the user being authenticated to Launch.

**To create a listing:**

**Note:** in the Exchange system, you're creating an "application" listing which is what they call various integrations, including Launch extensions.  

![](/images/getting-started/app-mgr-link.png)

1. Please sign in to the [Exchange Partner site](https://partners.adobe.com/exchangeprogram/experiencecloud). Once signed in, click on the App Manager link next to your name.
2. Select the Create New Application tab, and then select "Create New App" for a customized solution, or select an applicable template.
3. Provide your listing information. For detailed information on App Manager check out the full [article](https://adobeexchangeec.zendesk.com/hc/en-us/articles/360024197931). We suggest being very clear about what your extension does and why someone might want to use it. **This is your marketing space**, please feel free to promote your extension here with clear descriptions, links to landing pages on your site, links to help docs or support email addresses, etc. While you have limited space in your extension views, this Exchange listing is your chance to really promote your extension, and your company. Here are a few quick tips to get started:
    * **App Icon** – Make sure the icon for the Exchange listing has the appropriate dimensions, 512 x 512 for png or 1:1 aspect ratio for jpg. Note: this is a different file format than you'll use in your extension code. The extension itself will contain an svg file as the [icon](/extensions/reference/extension-manifest/).
    * **Featured Image** - **Get their attention!** Use an image that can stand alone and will show your brand and highlight your application (your Launch extension). The Featured Image is the one shown when someone shares a link to your Exchange listing or posts about it on the socials, so it needs to be a model representation of your brand.
    * **App Publisher's Logo** - This is your corporate logo, make sure the icon has the appropriate dimensions of 1280 x 720, or 2560 x 1440 (16:9) in png or jpg format.
    * **Configuration Instructions** – Tell customers how to configure your extension in Launch. Make sure they understand any required settings and next steps when your [configuration view](/extensions/reference/extension-configuration/) appears immediately after installing your extension in a property. 
    * **Tags** - On the first page of editing your listing, please be sure to include the word "Launch" in the 'Custom Tags' field. This will make your listing appear in searches for Launch in the Exchange marketplace:
    ![](/images/getting-started/custom-tags.jpg)
    * **Sandboxes** - Your access to Adobe Solutions is through what we call a Sandbox account. You get access to fully functioning versions of Launch, Adobe Analytics, Adobe Target, etc. These Sandbox accounts are requested as you create your application listing. In the **Connections** section select the specific connections that are applicable for the application you created (your Launch extension), and when you hit **Save**, the sandbox request will be generated if needed.  
4. Submit your listing! The Adobe Exchange team will review your application and provide feedback if updates are required. If you mark the "publish immediately" checkbox when you submit your listing, it will be published immediately upon approval. If you want to publish your application at a later time, leave the checkbox unchecker and when your extension listing is approved, a blue "Publish" button will appear next to it on your app (extension) listings page.

#### Create an effective listing

Please take a look at our [App Submission Guideline](https://partners.adobe.com/exchangeprogram/experiencecloud/build/ec-exchange.html) for detailed information on how to create the most engaging listing. No, really - you should check out that guide. Honest.

#### After submitting your Exchange listing

Once submitted, the Adobe Exchange team will review the application and will either approve the application, or respond with comments about changes. This process is detailed in the [App Submission Guidelines](https://partners.adobe.com/exchangeprogram/experiencecloud/build/ec-exchange.html).

If you don't have a login to the Exchange site, make sure that your email is registered for the Exchange program by following the instructions in the [Program Registration Guide](https://partners.adobe.com/content/mcp/us/en/home/reg-guide.html). Even if your company is registered, each user still has to associate their email with the partner account for the company. For questions on this process, email <ExchangeHelpEC@adobe.com>.

#### Update your Exchange listing after initial approval

When you update your extension, or just need to update your Exchange listing, login to the [Partner Portal](https://partners.adobe.com/exchangeprogram/experiencecloud), and click on the App Manager button next to your name. Then select your application and follow the flow above that was initially used to create the listing. Once re-submitted, the Adobe Exchange team will review the changes and will either approve the changes, or respond with comments about the changes.

### Your Admin Console Set Up

Before you get started with your extension_package, you need to set up your team members with user accounts and permissions.  This is accomplished in the Adobe [Administration Console](https://adminconsole.adobe.com/).

The steps included here should get you sorted, but if you need more information about Admin Console and user administration, there are a few resources to help you out:

* [Administration User Guide](https://helpx.adobe.com/enterprise/administering/user-guide.html?topic=/enterprise/administering/morehelp/introduction.ug.js) - Information about all things in the Admin Console
* [Administrative Roles in the Enterprise User Guide](https://helpx.adobe.com/au/enterprise/using/admin-roles.html) - More about the different types of administration roles.  For the guide below, we'll assume you are an Org Admin.

#### Choose Your Organization

Your Adobe Experience Cloud organization administrator should sign in to the [Admin Console](https://adminconsole.adobe.com/). The first screen is the Overview:

![](/images/getting-started/admin-console-overview.jpg)

Some of you may have access to more than one Organization. In order to add the Launch product to the correct Org, click the name of the Organization you see in the upper right corner of the screen, then choose the one where you want to use Launch:

![](/images/getting-started/admin-console-choose-org.jpg)

#### Create a Product Profile

A Product Profile is a group.  Individual rights are assigned to product profiles and any users in the profile will inherit those rights.

Choose the "Products" link at the top, and "LAUNCH, BY ADOBE" on the left. If you do not have the Launch Product listed, customers should contact their account team and partners should email <ExchangeTechEC@adobe.com>.

![](/images/getting-started/admin-console-products-launch.jpg)

The screenshot above shows one existing Profile for Launch, you may not have one yet. To create one, click the blue "New Profile" button. On the Create a New Profile screen, just add a Profile Name (Adobe Launch, for example), and an optional Description, then click Done:

![](/images/getting-started/admin-console-create-a-new-profile.jpg)

Now that we have the Product Profile in our Organization, let's add our users.

#### Assign Users to the Product Profile

Notice that the Product Profile shows zero for Entitled Users and Admins. Click the name of the Product Profile you created (Adobe Lunch in our example):

![](/images/getting-started/admin-console-profiles-add-user.jpg)

Click on the Users tab, then you can add users by clicking the blue Add User link:

![](/images/getting-started/admin-console-add-launch-user.jpg)

Here you can search for existing Adobe ID users by email, or add new ones as Users of this Adobe Launch Product Profile:

![](/images/getting-started/admin-console-add-user.jpg)

Click the blue Save link when you add the user. When you have all the users you need in this Product Profile, we'll add Permissions for them. Click the Permissions tab:

![](/images/getting-started/admin-console-profile-permissions.jpg)

On the Permissions screen you'll see PROPERTIES, COMPANY RIGHTS, and PROPERTY RIGHTS:

![](/images/getting-started/admin_console_rights.png)

To author extensions, you and your team need - at minimum - `Manage Properties` from the Company group as well as `Manage Extensions`, `Manage Environments`, and `Develop` from the Property group. You can create additional Product Profiles with more limited rights later if you like, but for now it is simplest to click "+ Add all" for both Company Rights and Property Rights, being sure to click blue "Save" link on each:

![](/images/getting-started/admin_console_add_all_company_rights.png)

![](/images/getting-started/admin_console_add_all_property_rights.png)

So far, we have chosen the appropriate Organization, created a Product Profile, added Users to the product profile, and assigned permissions.

This completes the required set up in the Administration Console! You and your team members that have been set up as users can now sign in to [Launch](https://launch.adobe.com/).

### Confirm Provisioning

After your company is provisioned with access to Launch and your users are set up as described above, you should be able to access the [Launch](https://launch.adobe.com/) production environment. If you know you've been provisioned for Launch and you've gone through the Admin Console steps above, but you still can't sign in to [Launch](https://launch.adobe.com/), please contact your Adobe support representatives.

## Creating Your Extension Package

We have a number of resources available to help you write extensions.

### Launch UI Basics

Before you get too deep into extension development is is helpful to understand how users will use your extension.  If you're not familiar with the Launch user interface, here are a few resources that can help you out:

* Introduction to Launch, by Adobe [YouTube playlist](https://www.youtube.com/watch?v=rmf1Nch43pI&list=PLOdw8u2F8CIjJtANC7IUzUW69cePHnZ3x)
* Launch User [help docs](https://docs.adobelaunch.com)

### Extension Development

Once you're up to speed on the Launch UI and how users will use it, you can start planning how you want your own extension to work and how you want users to be able to use it.  Think of it like its own mini-product with requirements.

#### Guides

These guides can help you understand the extension development process:

* The [Extension Quickstart](/extensions/guides/quickstart) guide and most of the other links available in the left-nav are great reference material for understanding what extensions can do, how user information is stored and passed between your extension and Launch, how your code is bundled into Launch libraries, and how your extension code is interpreted and used at runtime in the browser.
* The recently updated [tutorial video](https://youtu.be/rxjtC9o4rl0) is a great place to start.
* The [Introduction to Extensions](https://www.youtube.com/playlist?list=PLOdw8u2F8CIgynzKrPEwCPuDxzHW1WP5m) YouTube playlist walks through the process of creating extension packages.
* [Understanding JSON Schema](https://spacetelescope.github.io/understanding-json-schema/index.html#) article.
* [JSON Lint/Validator](http://jsonlint.com/)
* [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh) Chrome extension to highlight & print JSON & JSONP.
* [jsonschema.net](https://jsonschema.net/#/editor) editor to help create JSON schema from your object
* [JSON Schema Validator](http://www.jsonschemavalidator.net/) An online, interactive JSON Schema validator.

#### Tools

NPM tools to help you with your extension package development:

* [Launch Extension Scaffold Tool](https://www.npmjs.com/package/@adobe/reactor-scaffold) helps you easily create a starter project on your local machine
* [Launch Extension Sandbox](https://www.npmjs.com/package/@adobe/reactor-sandbox) helps you validate your extension views and modules on your local machine
* [Launch Extension Packager](https://www.npmjs.com/package/@adobe/reactor-packager) is a command-line utility for packaging a Launch extension into a zip file
* [Reactor Uploader](https://www.npmjs.com/package/@adobe/reactor-uploader) - interactive command line tool to help you input your technical account credentials and upload your extension package to Launch

#### Example Extensions

There are example extensions on Github you can review or use as starter projects:

* [Hello World example extension](https://github.com/Adobe-Marketing-Cloud/reactor-helloworld-extension)
* [Facebook example extension](https://github.com/Adobe-Marketing-Cloud-Activation/extension-facebookpixel)
* [Typekit example extension](https://github.com/jeffchasin/extension-typekit)
* [Pinterest example extension](https://github.com/jeffchasin/extension-pinterest)

#### Slack Workspace

There is a Slack community workspace where extension authors can support each other. You can request access at [http://join.launchdevelopers.chat](http://join.launchdevelopers.chat).

**Please note**: while there are members of the Launch team in this Slack workspace, it is a community resource not sponsored by or moderated by Adobe.

### Extension Validation

Once your team is satisfied with the performance of your extension and the results they see in the [Sandbox](https://www.npmjs.com/package/@adobe/reactor-sandbox#running-the-sandbox) tool, you should be ready to upload your extension package to Launch. Before uploading, please validate that any required fields or settings are present. For example, reviewing your [extension manifest](/extensions/reference/extension-manifest/), your [extension configuration](/extensions/reference/extension-configuration/), your [views](/extensions/reference/views/), and your [library modules](/extensions/reference/library-module-format/) (at a minimum) would be good practice. One specific example is your logo file:  Add an `"iconPath": "example.svg",` line to your `extension.json` file and include that logo image file in your project. This is the relative path to the icon that will be displayed for the extension within Launch. It should not begin with a slash. It must reference an SVG file with a `.svg` extension. The SVG should appear normally when rendered square and may be scaled by our user interface. See [How to Scale SVG](https://css-tricks.com/scale-svg/) for more details.

**Required**: For public extensions, please include an item in your `extension.json` with a link to your Exchange listing. Your [extension manifest](/extensions/reference/extension-manifest/) should include an entry like this:  
`"exchangeUrl":"https://www.adobeexchange.com/experiencecloud.details.12345.html"` pointing to the URL of your Exchange listing.

## Upload and E2E Testing

Testing extensions involves using the Launch API to upload your extension packages as well as using the Launch UI to install your extension package to a property and then exercise its capabilities inside a Launch library and build.

The basic steps to achieve this are:

1. Create an Adobe I/O Integration (also called a technical account)
2. Upload your extension package
3. Login to Launch
4. Create a Development property
5. Install your extension package to a development property
6. Create resources that use your extension capabilities
7. Publish your changes
8. Install Launch on your test site
9. Test

When you discover issues that need to be fixed, you will:

1. Update your extension package - your installed extension will reference this new package automatically
1. Update resources as needed
1. Publish again
1. Test

As we walk through the steps below, we'll assume you're using Mac OS with node and npm installed and available.

### Create an Adobe I/O Technical Account

Currently, extension packages are uploaded using the Reactor API.  In order to use the API, you need a technical account with Adobe I/O.  We'll create the technical account in the I/O console and then we'll use the Uploader tool to upload the extension package.

**Please note**: Only Experience Cloud Organization Administrators can create integrations in Adobe I/O for this purpose. This is different than being an Admin in a particular product, like Analytics. If you create an integration and you see the Launch product button grayed out, please confirm with your support team that you are and Administrator for your Experience Cloud Organization, or contact the Administrator in your company.

The first thing we need is a public/private key pair.  You can purchase key pairs if you want, but for this guide, we'll generate our own self signed keys.

In your terminal, issue the following three commands:

```bash
mkdir keys
cd keys
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout reactor_private.key -out reactor_public.crt
```

We recommend naming your keys for easy reference later (`reactor_private.key` and `reactor_public.crt` in the above example) and to store them in a folder. If you create multiple integrations, you can easily identify and manage which keys go with which integration.

[OpenSSL](https://www.openssl.org/) asks for some information that will be incorporated into the keys:

```bash
Country Name (2 letter code:  // Example: US
State or Province Name:  // Example: California
Locality Name (eg, city):  // Example: Santa Monica
Organization Name (eg, company):  // Example: Grunions Incorporated
Organizational Unit Name (eg, section):  // Example: Engineering
Common Name (e.g. server FQDN or YOUR name):  // Example: Jane Doe
Email Address:  // Example:  jane.doe@grunions.com
```

After you input your information, open the current directory and you should see your .key and .crt files, with the name you used in the `openssl` command above. Here's an example:

![](/images/getting-started/keys.gif)

Now we need to actually create the technical account in Adobe I/O:

1. Go to [https://console.adobe.io/](https://console.adobe.io/) and sign in with your Adobe ID.
1. Click the blue "New Integration" button
1. Select "Access an API", then click "Continue"
1. Select "New integration", then click "Continue"
1. Select the Adobe service to integrate with: select "Experience Platform Launch API" and click "Continue"
1. On the "Create a new integration" screen, enter a Name and Description. Drag & drop your xxxx_public.crt file onto the "Public keys certificates" drop zone. At the bottom of the screen, under "Launch, by Adobe Configuration", select "Extension Developer" as the role and click the blue button:

![](/images/getting-started/new-integration.gif)

You should see a message that says "Your integration has been created". Now click the "Continue to integration details" button.

You are now looking at the "Overview" screen of the integration.  Keep this screen open, we need several pieces of information from here for the next step.

![](/images/getting-started/i-o_overview.jpg)

### Upload Your Extension Package

With your credentials sorted out, you're now ready to test your extension package end-to-end.

When you first upload your extension package, it goes into a state of `development`.  This means that it is only visible with your own Launch company and only with a Launch property that has been marked for extension development (more on this later).

For now, go back to the command line within the directory that contains your .zip package.

```bash
npx @adobe/reactor-uploader
```

**Note**: `npx` allows you to download and run an npm package without actually installing it on your machine.  This is the simplest way to run the Uploader.

The Uploader will ask you to input several pieces of information:

* Which environment do you want to upload to? Production.
* How would you like to authenticate? Provide Adobe I/O integration details.
* What is the path to your private key? /path/to/reactor_private.key. This is the place you saved your private key above.
* What is your Org ID? Copy/paste this from the I/O Console overview page that you left open earlier.
* What is your technical account ID? Copy/paste from I/O Console.
* What is your API key? Copy/paste from I/O Console.
* What is client secret? Copy/paste from I/O console.
* What is the path to the extension_package you want to upload? /path/to/extension_package.zip.  If you invoke the uploader from within the directory containing your .zip package, you can just select it from the list instead of typing the path.

Your extension package will then be uploaded and the uploader will give you the ID of the extension_package.

**Note**: When uploading or patching, extension packages are placed into a pending state while the system asynchronously extracts the package and deploys. While this process is taking place, you can poll the `extension_package` ID for its status using the API and within Launch, you'll see an extension card in the catalog marked as Pending.

**Note**: If you plan to run the uploader often, putting all this information each time in can be a burden. You can also pass these in as argument from the command line.  Check out the [Command Line Arguments section](https://www.npmjs.com/package/@adobe/reactor-uploader#command-line-arguments) of the NPM docs for more info.

### Login to Launch

The users we set up earlier can now login to Launch at [https://launch.adobe.com](https://launch.adobe.com/). Again, if you have multiple Experience Cloud Organizations with Adobe, you'll need to select the Organization where you added the Product Profile in the first step above:

![](/images/getting-started/launch-choose-org.jpg)

### Create a Development Property

When you sign in to the Launch you'll see the Properties screen first.  A property is a container for the tags that you want to deploy and it can be used on one or many sites.

![](/images/getting-started/properties-screen.jpg)

You see my 'test' property here but you won't see any properties on your screen the first time you sign in. Click **New Property** to create one. Enter a name and a URL. You'll probably want to use the URL of your test site or page where you'll be testing your extension. This domain field can be used by some extensions or by a condition using the Core extension (which we'll look at later). Note that `localhost` won't work, so if you're on a `localhost` URL, just use any value for this testing, like example.com.

Because you want to use this property for extension development testing, you also need to expand the Advanced Options and make sure to check the box for "Configure for extension development".

![](/images/getting-started/launch_create_a_dev_property.png)

Click the blue **Save** link at the bottom to save your new property.

This brings you back to the Properties screen. Click on the name of your property that you just created. This is the Overview screen in a property. Not much work happens here, but there are links to each area of the system, with the global navigation links at the top.

### Install Your Extension

To install your extension in this property, click on the **Extensions** link in the main navigation links at the top.

![](/images/getting-started/extensions.jpg)

You'll see the **Core** extension on this **Installed** screen. The Core extension contains all the tag management functionality within Launch. To add your extension, click on the **Catalog**:

![](/images/getting-started/catalog.jpg)

The catalog displays card icons for each available extension. If your extension isn't displayed in the catalog, be sure you completed the steps above in the Adobe Administration Console Set Up and Creating Your Extension Package sections above first.  Your extension package may also show up as Pending if Launch hasn't completed the initial processing.

If you are convinced you've done everything correctly, and you still don't see a Pending or Failed extension package in the catalog, you may want to hit the API directly to check the status of your extension package.  For more info on that, please read [Get an ExtensionPackage](/api/reference/1.0/extension_packages/fetch/) in the API docs.

Assuming that your extension package has finished processing, the card here will have an **Install** button for you to click:

![](/images/getting-started/install-extension.jpg)

This will bring up the configuration screen you built for your extension (if you have one). Add any information needed to configure your extension and click the blue **Save** link at the bottom.  If your extension does not have configuration, then it will be installed as soon as you click Install.

Here's an example with the Facebook extension:

![](/images/getting-started/fb-extension.jpg)

You should now see the **Installed** extensions screen with the Core extension and your extension.

![](/images/getting-started/extension-installed.jpg)

### Create Resources to Use Your Extension

Extensions provide new capabilities to users in Launch.  These almost always show up in Data Elements or in the Rule Builder.  We'll discuss both of these areas next.

#### Data Elements

Data elements exist in Launch to help users persist values. Each data element is a mapping or pointer to source data. A single data element is a variable that can be mapped to query strings, URLs, cookie values, JavaScript variables, etc.

Extensions can define data element types if needed for your extension to operate, or simply as a convenience to users. When an extension provides data element types, they appear in a dropdown list for users on the Create New Data Element screen:

![](/images/getting-started/create-data-element.jpg)

When a user selects your extension from the Extension dropdown, the Data Element Type dropdown is populated with any data element types supplied by your extension. The user can then map each data element to its source value. Data elements can then be used when building rules in the Data Element Change Event or Custom Code Event to trigger a rule to execute. A data element can also be used in the Data Element Condition, or other Conditions, Exceptions, or Actions in a rule.

Once the data element is created (the mapping is set up), users can reference the source data simply by referencing the data element. If the source of the value ever changes (site re-designs, etc.) users only need update the mapping once in Launch and all the data elements will automatically receive the new source value.

#### Rules

Click on the **Rules** link in the top navigation, then **Add Rule**:

![](/images/getting-started/rules-link.jpg)

First, name the rule, any name is fine. The Create New Rule screen is set up like an `if-then` statement:

![](/images/getting-started/create-new-rule.jpg)

If an event occurs, and conditions pass, and there are no exceptions, the action is triggered. This same flow exists in extensions where you can create or leverage events, conditions, exceptions, data elements, or actions.

Continuing with the Facebook example, let's add an event for any time a page loads on our site:

![](/images/getting-started/load-event.jpg)

With the `Window Loaded` Event Type, any time a page loads on our site this rule will be triggered. Click **Save**. For this example, let's skip Conditions and Exceptions as we want this rule triggered for any page on our site - our "global" On Load rule so to speak.

Under Actions click **Add**. On this Action Configuration screen we can choose the extension we want to work with and the action we want to occur when this rule is triggered. Let's choose the **Facebook Pixel** under Extension, and **Send Page View** under Action Type:

![](/images/getting-started/action-configuration.jpg)

Click the blue **Keep Changes** at the bottom, and **Save Rule** on the next screen. When testing your extension, you can select any events, conditions, etc. supplied by your extension in any number of rules.

### Publish Your Changes

In the main navigation, click on **Publishing**, then on the blue **Add New Library** link:

![](/images/getting-started/add-new-library.jpg)

A library is a set of instructions for how extensions, data elements, and rules will interact with one another and with a website. Libraries are compiled into builds. A library can contain as many changes as a user is comfortable making or testing at once.

On the Create New Library screen, add a Name and choose an Environment. Launch provides a default development environment helpfully named `Development`, so select that one from the Environment list.  For now, we'll add all available resources, so click on **Add All Changed Resources**.

**Note**: When you add a resource to a library, a snapshot of that resource as of that exact moment is taken and added to the library.  When you make changes to your resources later (for example, as a result of fixes you need to make), you'll need to also update the library to include the latest changes to your resources.  The **Add All Changed Resources** button is useful for this purpose as well.

![](/images/getting-started/create-new-library.jpg)

Then click the blue **Save** link at the bottom. Now that we have all our changes included in this `dev` library, let's build it:

![](/images/getting-started/build-for-dev.jpg)

After the build process completes, you should see a green **success** indicator next to the library name:

![](/images/getting-started/successful-build.jpg)

The Launch library is now published and waiting to be used.  We now need to tell our test page to look for this Launch library so we can test the behavior for the end-user in a browser.

### Install Launch in Your Test Site or Page

Installation instructions are available from the Environments tab, so let's navigate there now.  

On this page, you'll see all available environments and you have the ability to create more.  We published our library to the Development environment, so let's get the installation instructions for that Environment by clicking the box icon in the Install column on the Development row.

![](/images/getting-started/launch_installation_instructions.png)

We're now looking at the installation instructions for the Development environment. All we need to do here is copy the `<script>` tag in the box, so click the copy button.

![](/images/getting-started/launch_installation_instructions_copy.png)

Installation is completed by placing this single `<script>` tag inside the the `<head>` section of your document or site template.  Now just go visit your test site to test the behavior of your published Launch library.

### Test

While validating your extension on your test page or site, there are a few console commands that will be helpful:

* `_satellite.setDebug(true);` will put Launch into debug mode and output useful logging statements to the console.
* The `_satellite._container` object contains all kinds of useful information about the deployed Launch library including details about the Build, Data Elements, Rules, and Extensions included.

Ultimately your objective here is to test the functionality of the deployed Launch library to ensure that the code you wrote inside your extension package behaves as expected when Launch has compiled it into a library.

When you discover changes that need to be made to your extension package, the iteration process is similar to the development process.

1. Make changes to the code in your project
2. Validate the changes with the Sandbox tool
3. Use the Packager tool to create a new .zip package
4. Use the Uploader tool to upload your new .zip package - you can follow the same instructions as above for the initial upload, but you'll notice that this time, because there is already an extension package of that name in development mode, this one will overwrite the other one instead of creating a new one.  If you want to save yourself some time by not entering credentials over and over again, you can look at the [reactor-uploader documentation](https://www.npmjs.com/package/@adobe/reactor-uploader) and pass in the arguments on the command line.
5. We can skip the installation step this time around
6. Modify resources - if you've changed the configuration for any of your extension components, you'll want to update those resources in the Launch UI
7. Add your latest changes to your Library and build again
8. Test some more

### Document

Your [Exchange listing](#create-a-listing-in-the-exchange-partner-portal-required) is a great place for marketing and support information for your extension, but our Launch [Help Docs](https://docs.adobelaunch.com) are used every day by our customers. We encourage you to submit a pull request to [add your extension documentation](https://github.com/Adobe-Marketing-Cloud/reactor-user-docs/blob/master/extension-reference/3rd-party-extensions.md) into the Launch user docs. We also gladly accept [tutorials](https://docs.adobelaunch.com/launch-tutorials/contributing) where you can better illustrate the value of your extension for our mutual customers. Open source docs for the win! 🚀

## Releasing Your Extension

Once you've completed testing and documenting, you are ready to release. There are currently two types of releases that you can perform:

* Private Release - Private release means that the completed extension is available to all properties within your company, but is not available to any other companies in Launch.
* Public Release - Public means that the completed extension is available in the public marketplace for all Launch users.

**Note**: Once you have released your extension, you can no longer make changes to it and you cannot unrelease it.  Once released, bug fixes and feature additions are accomplished by `POST`ing a new version of your extension package and following the above testing and release steps on that new version.

You must release your extension as a private extension before you can release it publicly.

### Releasing - Private

You release your extension package as private by `PATCH`ing your `extension_package` resource and supplying a payload with an instruction to make the `extension_package` private.

Currently, this is accomplished by making the API request directly.  You can use a tool like Postman or you can use your command line and use something like this:

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
1. Select your Org and click on your integration (technical account).
1. Click on "JWT" at the top.
1. Back at your command prompt or terminal window, type `cat stage_reactor_qe_test_private.key` (or whatever you named your private key)
1. Copy the key value and paste it into the "Paste private key" field on the JWT page in your browser (you can include the `Begin` and `End` lines of the private key). Click "Generate JWT"
1. Click "Copy" under the "Sample CURL command" section and paste it into your command prompt or terminal window
1. You should now see "token_type": "bearer", and your "access_token" value in your terminal.
1. The value of the bearer access token is what you will use in your API calls to upload and patch your extension packages. We suggest you save the bearer token value, Adobe access tokens are valid for 24 hrs.

For more details, see [Release Private](/api/reference/1.0/extension_packages/release_private/) in the API docs.

### Releasing - Public

Once you have completed the private release, you can ask Adobe to release it publicly.  This will make your extension available in the public catalog.  Any Launch user can install your extension to any property.

Please complete the [Public Release Request Form](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=7DRB5U) to begin the release process.

## Support

As you're building and testing your extension, support is available in the Launch developer community Slack workspace where extension authors support each other. You can request access at [http://join.launchdevelopers.chat](http://join.launchdevelopers.chat). **Please note**: while there are members of the Launch team in this Slack workspace, it is a community resource not sponsored by or moderated by Adobe.
