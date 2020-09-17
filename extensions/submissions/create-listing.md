---
title: Create Exchange Listing
order: 5
---

# Create a Listing

{% alert info, Private and Public %}

Launch has two catalogs: Private and Public.

The Private catalog is only available within your own organization.  If your Extension is only intended for Company use and should not be available to the public, you do not need to complete this step.

If your Extension is intended for use by the public, you'll need to complete a listing and include the URL to your listing in the extension.json manifest file inside of your Extension Package.

{% endalert %}

Extensions created for public release are required to have a listing in the [Exchange Marketplace](https://experiencecloud.adobeexchange.com/). These listings enable extension developers to post support information, links to additional support or documentation, and to market your extensions to prospective users who may not be aware of your company or the functionality of your extension. In this marketplace, your extension will have a public listing that can be viewed without the user being authenticated to Launch.

The listing can be created at any time during the development of the extension, but must be completed and published (with the URL included in your extension package) before your extension can be released publically.

**To create a listing:**

**Note:** in the Exchange system, you're creating an "application" listing which is what they call various integrations, including Launch extensions.  

![](/images/getting-started/app-mgr-link.png)

1. Please sign in to the [Exchange Partner site](https://partners.adobe.com/exchangeprogram/experiencecloud). Once signed in, click on the App Manager link next to your name.
2. Select the Create New Application tab, and then select "Create New App" for a customized solution, or select an applicable template.
3. Provide your listing information. For detailed information on App Manager check out the full [article](https://adobeexchangeec.zendesk.com/hc/en-us/articles/360024197931). We suggest being very clear about what your extension does and why someone might want to use it. **This is your marketing space**, please feel free to promote your extension here with clear descriptions, links to landing pages on your site, links to help docs or support email addresses, etc. While you have limited space in your extension views, this Exchange listing is your chance to really promote your extension, and your company. Here are a few quick tips to get started:
   - **App Icon** – Make sure the icon for the Exchange listing has the appropriate dimensions, 512 x 512 for png or 1:1 aspect ratio for jpg. Note: this is a different file format than you'll use in your extension code. The extension itself will contain an svg file as the [icon](/extensions/reference/extension-manifest/).
   - **Featured Image** - **Get their attention!** Use an image that can stand alone and will show your brand and highlight your application (your Launch extension). The Featured Image is the one shown when someone shares a link to your Exchange listing or posts about it on the socials, so it needs to be a model representation of your brand.
   - **App Publisher's Logo** - This is your corporate logo, make sure the icon has the appropriate dimensions of 1280 x 720, or 2560 x 1440 (16:9) in png or jpg format.
   - **Configuration Instructions** – Tell customers how to configure your extension in Launch. Make sure they understand any required settings and next steps when your [configuration view](/extensions/reference/extension-configuration/) appears immediately after installing your extension in a property. 
   - **Tags** - On the first page of editing your listing, please be sure to include the word "Launch" in the 'Custom Tags' field. This will make your listing appear in searches for Launch in the Exchange marketplace:
     ![](/images/getting-started/custom-tags.jpg)
   - **Sandboxes** - Your access to Adobe Solutions is through what we call a Sandbox account. You get access to fully functioning versions of Launch, Adobe Analytics, Adobe Target, etc. These Sandbox accounts are requested as you create your application listing. In the **Connections** section select the specific connections that are applicable for the application you created (your Launch extension), and when you hit **Save**, the sandbox request will be generated if needed.  
4. Submit your listing! The Adobe Exchange team will review your application and provide feedback if updates are required. If you mark the "publish immediately" checkbox when you submit your listing, it will be published immediately upon approval. If you want to publish your application at a later time, leave the checkbox unchecked and when your extension listing is approved, a blue "Publish" button will appear next to it on your app (extension) listings page.

#### Create an effective listing

Please take a look at our [App Submission Guideline](https://partners.adobe.com/exchangeprogram/experiencecloud/build/ec-exchange.html) for detailed information on how to create the most engaging listing. No, really - you should check out that guide. Honest.

#### After submitting your Exchange listing

Once submitted, the Adobe Exchange team will review the application and will either approve the application, or respond with comments about changes. This process is detailed in the [App Submission Guidelines](https://partners.adobe.com/exchangeprogram/experiencecloud/build/ec-exchange.html).

If you don't have a login to the Exchange site, make sure that your email is registered for the Exchange program by following the instructions in the [Program Registration Guide](https://partners.adobe.com/content/mcp/us/en/home/reg-guide.html). Even if your company is registered, each user still has to associate their email with the partner account for the company. For questions on this process, email <ExchangeHelpEC@adobe.com>.

#### Update your Exchange listing after initial approval

When you update your extension, or just need to update your Exchange listing, login to the [Partner Portal](https://partners.adobe.com/exchangeprogram/experiencecloud), and click on the App Manager button next to your name. Then select your application and follow the flow above that was initially used to create the listing. Once re-submitted, the Adobe Exchange team will review the changes and will either approve the changes, or respond with comments about the changes.