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
        <pre><code>POST  /extension_packages</code></pre>
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
        <pre><code>curl https://reactor.adobe.io/extension_packages <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Accept: application/vnd.api+json;revision=1"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Content-Type: multipart/form-data"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Authorization: Bearer [TOKEN]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Api-Key: [KEY]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Gw-Ims-Org-Id: [ORG_ID]"</span> <span class="se">\</span>
  <span class="nt">-F</span> <span class="s2">"package"="@[PATH]"</span> <span class="se"></span>
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
        <em>202 Accepted</em>
        <pre><code><span class="p">{</span><span class="w"></span>
  <span class="nt">"data"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
    <span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"EP10bb503178694d73bc0cd84387b82172"</span><span class="p">,</span><span class="w"></span>
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
      </span><span class="nt">"updated_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2018-09-14T11:34:56.877Z"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"version"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"view_base_path"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="w"></span>
    <span class="p">},</span><span class="w"></span>
    <span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
      <span class="nt">"self"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/extension_packages/EP10bb503178694d73bc0cd84387b82172"</span><span class="w"></span>
    <span class="p">}</span><span class="w"></span>
  <span class="p">}</span><span class="w">
</span><span class="p">}</span></code></pre>
      </div>
    </div>
  </div>
</div>
