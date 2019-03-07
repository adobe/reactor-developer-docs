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

## Status

An `ExtensionPackage` status may be one of the following values.

#### `pending`

When an `ExtensionPackage` is created, `status` is set to `pending`.  This indicates that Launch received the information for the extension package and will begin processing.

`ExtensionPackages` with a `status` of `pending` are not available for use.

#### `succeeded`

When processing of the `ExtensionPackage` has completed, if processing was successful, the status will change to `succeeded`.

#### `failed`

When processing of the `ExtensionPackage` has completed, if processing was unsuccessful, the status will change to `failed`. An `ExtensionPackage` with a `status` of `failed` may be updated until processing succeeds.

`ExtensionPackages` with a `status` of `failed` are not available for use.

## Availability

`ExtensionPackages` have an `availability` attribute that represents its visibility and availability for use.

An `ExtensionPackage` `availability` may be one of the following values.

#### `development`

An extension package in `development` is only visible to, and available within, the `Company` that owns it, and `Properties` which are configured for extension development.

#### `private`

A `private` `ExtensionPackage` is only visible to, and available for installation on a `Property` within the `Company` that owns it.

#### `public`

A `public` `ExtensionPackage` is visible and available to all `Companies` and `Properties`.

When an `ExtensionPackage` is created, `availability` is set to `development`. After testing has been completed, you can transition the `ExtensionPackage` to either `private` or `public`.

## Attributes

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

<section class="scenario">
  <h1 id="definition">Definition<a class="anchorjs-link " href="#definition" aria-label="Anchor link for: definition" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <pre><code>POST  /extension_packages</code></pre>
</div>

  <h1 id="example-request">Example Request<a class="anchorjs-link " href="#example-request" aria-label="Anchor link for: example request" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <pre><code>curl https://reactor.adobe.io/extension_packages <span class="se">\</span>
  -H <span class="s2">"Accept: application/vnd.api+json;revision=1"</span> <span class="se">\</span>
  -H <span class="s2">"Content-Type: multipart/form-data"</span> <span class="se">\</span>
  -H <span class="s2">"Authorization: Bearer [TOKEN]"</span> <span class="se">\</span>
  -H <span class="s2">"X-Api-Key: [KEY]"</span> <span class="se">\</span>
  -F <span class="s2">"package"="@[PATH]"</span> <span class="se"></span>
</code></pre>
</div>

  <h1 id="example-response">Example Response<a class="anchorjs-link " href="#example-response" aria-label="Anchor link for: example response" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <em>202 Accepted</em>
  <pre><code><span class="p">{</span><span class="w">
  </span><span class="nt">"data"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
    </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"EP10bb503178694d73bc0cd84387b82172"</span><span class="p">,</span><span class="w">
    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"extension_packages"</span><span class="p">,</span><span class="w">
    </span><span class="nt">"attributes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
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
      </span><span class="nt">"view_base_path"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="w">
    </span><span class="p">},</span><span class="w">
    </span><span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
      </span><span class="nt">"self"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/extension_packages/EP10bb503178694d73bc0cd84387b82172"</span><span class="w">
    </span><span class="p">}</span><span class="w">
  </span><span class="p">}</span><span class="w">
</span><span class="p">}</span></code></pre>
</div>

</section>
