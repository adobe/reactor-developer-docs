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

The easiest way to release your extension to private availability is to use the [Launch Extension Releaser](https://www.npmjs.com/package/@adobe/reactor-releaser). More instructions are found within its documentation.

If you'd like to release your extension to private availability using the API directly, see [Release Private](/api/reference/1.0/extension_packages/release_private/) in the API docs for more detail.

## Release - Public

Once you have completed the private release, you can ask Adobe to release it publicly.  This will make your extension available in the public catalog.  Any Launch user can install your extension to any property.

Please complete the [Public Release Request Form](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=7DRB5U) to begin the release process.
