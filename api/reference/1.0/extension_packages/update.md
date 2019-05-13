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


<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Endpoint Definition</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      <div class="highlight">
        <pre><code>POST  /extension_packages/:id</code></pre>
      </div>
    </div>
  </div>

  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Example Request</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      <div class="highlight">
        <pre><code>curl https://reactor.adobe.io/extension_packages/:id <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Accept: application/vnd.api+json;revision=1"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Content-Type: multipart/form-data"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Authorization: Bearer [TOKEN]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Api-Key: [KEY]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Gw-Ims-Org-Id: [ORG_ID]"</span> <span class="se">\</span>
  <span class="nt">-F</span> <span class="s2">"package"="@[PATH]"</span> <span class="se"></span>
  <span class="nt">-X</span> PATCH
      </code></pre>
      </div>
    </div>
  </div>

  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Example Response</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      <div class="highlight">
        <em>200 OK</em>
        <pre><code><span class="p">{</span><span class="w"></span>
  <span class="nt">"data"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
    <span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"EP0393ce01ac3540acb78f103d8e58a5a0"</span><span class="p">,</span><span class="w"></span>
    <span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"extension_packages"</span><span class="p">,</span><span class="w"></span>
    <span class="nt">"attributes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
      </span><span class="nt">"actions"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"author"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"availability"</span><span class="p">:</span><span class="w"> </span><span class="s2">"development"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"cdn_path"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"conditions"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"configuration"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"created_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2018-09-14T11:34:56.877Z"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"data_elements"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"description"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"display_name"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"events"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"exchange_url"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"hosted_lib_files"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"icon_path"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"main"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"resources"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"shared_modules"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"status"</span><span class="p">:</span><span class="w"> </span><span class="s2">"pending"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"platform"</span><span class="p">:</span><span class="w"> </span><span class="s2">"null"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"updated_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2018-10-15T11:34:56.877Z"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"version"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"view_base_path"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="w"></span>
    <span class="p">},</span><span class="w"></span>
    <span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
      <span class="nt">"self"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/extension_packages/EP0393ce01ac3540acb78f103d8e58a5a0"</span><span class="w"></span>
    <span class="p">}</span><span class="w"></span>
  <span class="p">}</span><span class="w">
</span><span class="p">}</span></code></pre>
      </div>
    </div>
  </div>
</div>
