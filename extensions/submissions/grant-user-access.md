---
title: Grant User Access
order: 3
---

# Grant User Access

Before you get started with your extension_package, you need to set up your team members with user accounts and permissions.  This is accomplished in the Adobe [Administration Console](https://adminconsole.adobe.com/).

The steps included here should get you sorted, but if you need more information about Admin Console and user administration, there are a few resources to help you out:

- [Administration User Guide](https://helpx.adobe.com/enterprise/administering/user-guide.html?topic=/enterprise/administering/morehelp/introduction.ug.js) - Information about all things in the Admin Console
- [Administrative Roles in the Enterprise User Guide](https://helpx.adobe.com/au/enterprise/using/admin-roles.html) - More about the different types of administration roles.  For the guide below, we'll assume you are an Org Admin.

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