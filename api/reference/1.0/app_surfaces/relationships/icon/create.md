---
title: Create
labels:
  - unstable
---

# Create an Icon for an AppSurface

{% labels %}

Icons are processed asynchronously and have a `status` attribute representing the current status of the Icon.

{% alert info, Note %}
This endpoint expects multipart requests. Icons must be 4 Mb or less.
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
              <code>file</code>
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              ico, png, jpg, jpeg
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
              required
            </div>
            <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
             The icon image
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
        <pre><code>POST  app_surfaces/:app_surface_id/icon</code></pre>
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
        <pre><code>curl https://reactor.adobe.io/app_surfaces/:app_surface_id/icon <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Accept: application/vnd.api+json;revision=1"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Content-Type: multipart/form-data"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"Authorization: Bearer [TOKEN]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Api-Key: [KEY]"</span> <span class="se">\</span>
  <span class="nt">-H</span> <span class="s2">"X-Gw-Ims-Org-Id: [ORG_ID]"</span> <span class="se">\</span>
  <span class="nt">-F</span> <span class="s2">"file"="@[PATH]"</span> <span class="se"></span>
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
    <span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"ICf76b9de5b229435bb76802427a88464b"</span><span class="p">,</span><span class="w"></span>
    <span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"icons"</span><span class="p">,</span><span class="w"></span>
    <span class="nt">"attributes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"> </span>
      <span class="nt">"url"</span><span class="p">:</span><span class="w"> </span><span class="kc">"https://assets.adobedtm.com/icons/17e0df72ece8/ICf76b9de5b229435bb76802427a88464b.png"</span><span class="p">,</span><span class="w"> </span>
      <span class="nt">"status"</span><span class="p">:</span><span class="w"> </span><span class="s2">"pending"</span><span class="p">,</span><span class="w"> </span>
      <span class="nt">"created_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2022-02-04T21:14:23.483Z"</span><span class="p">,</span><span class="w"> </span>
      <span class="nt">"updated_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2022-02-04T21:14:23.483Z"</span><span class="w"></span>
    <span class="p">},</span><span class="w"></span>
    <span class="nt">"relationships"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
      <span class="nt">"resource"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
        <span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
          <span class="nt">"related"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/app_surfaces/ASb763e208e4f64c86a4ce6445604355ce"</span><span class="w"></span>
        <span class="p">},</span><span class="w"></span>
        <span class="nt">"data"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
          <span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"ASb763e208e4f64c86a4ce6445604355ce"</span><span class="p">,</span><span class="w"></span>
          <span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"app_surfaces"</span><span class="p"></span><span class="w"></span>
        <span class="p">}</span><span class="w"></span>
      <span class="p">}</span><span class="w"></span>
    <span class="p">},</span><span class="w"></span>
    <span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w"></span>
      <span class="nt">"resource"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/app_surfaces/ASb763e208e4f64c86a4ce6445604355ce"</span><span class="p">,</span><span class="w"></span>
      <span class="nt">"self"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/icons/ICf76b9de5b229435bb76802427a88464b"</span><span class="w"></span>
    <span class="p">}</span><span class="w"></span>
  <span class="p">}</span><span class="w">
</span><span class="p">}</span></code></pre>
      </div>
    </div>
  </div>
</div>
