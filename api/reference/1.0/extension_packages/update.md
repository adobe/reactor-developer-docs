---
title: Update
labels:
  - unstable
---

# Update an ExtensionPackage

{% labels %}

Only a `development` extension package can be updated using a new archive file. 
Once the `ExtensionPackage` has been transitioned to either `private` or `public`,
it can no longer be updated. If you want to add new functionality or fix bugs,
you must first [create](/api/reference/1.0/extension_packages/create/) a new
`ExtensionPackage` with the same name, but a new version. Then when the new
`ExtensionPackage` is transitioned to `private` or `public`, it will become
available in the marketplace, replacing the previous version.

When updating an `ExtensionPackage`, you do not have to keep the same version
as the existing `development` `ExtensionPackage`. However, it must be a version
number greater than any `private` or `public` versions of the same extension.

{% alert info, Note %}
This endpoint expects multipart requests.
{% endalert %}

<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Attributes</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      <div class="spectrum-Table" role="grid">
        <div class="spectrum-Table-head" style="display: flex" role="row">
          <div class="spectrum-Table-headCell" style="flex: 1" role="columnheader">
            Field
          </div>
          <div class="spectrum-Table-headCell" style="flex: 1" role="columnheader">
            Type
          </div>
          <div class="spectrum-Table-headCell" style="flex: 1" role="columnheader">
            Required / Optional
          </div>
          <div class="spectrum-Table-headCell" style="flex: 1" role="columnheader">
            Description
          </div>
        </div>
  
        <div class="spectrum-Table-body" role="rowgroup">
          <div class="spectrum-Table-row" style="display: flex" role="row">
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              <code>package</code>
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              file
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              required
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              The extension package archive
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

{% scenario extension_packages.update extension_packages.update_an_extension_package %}
