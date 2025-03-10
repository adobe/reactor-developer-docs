---
title: Create
labels:
  - unstable
---

# Create an ExtensionPackage

{% labels %}

For an extension package to be available to the Launch platform, it must be added as an `ExtensionPackage`.

Extension packages are processed asynchronously and have a `status` attribute representing the current status of the ExtensionPackage.

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

{% scenario extension_packages.create extension_packages.create_an_extension_package %}
