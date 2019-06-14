---
title: Private Release
labels:
  - unstable
---

# Private Release an ExtensionPackage

{% labels %}

Once you have completed testing your `ExtensionPackage` you can release it privately.  This makes it available to any property within your company.

After you have released privately, you can begin the public release process by filling out the [Public Release Request Form](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=7DRB5U).

A Private release is achieved by supplying an `action` with a value of `release_private` in the `meta` of the request `data`. 

<section class="scenario">
  <h1 id="definition">Definition<a class="anchorjs-link " href="#definition" aria-label="Anchor link for: definition" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <pre><code>PATCH /extension_packages/:id</code></pre>
</div>

  <h1 id="example-request">Example Request<a class="anchorjs-link " href="#example-request" aria-label="Anchor link for: example request" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <pre><code>curl https://reactor.adobe.io/extension_packages/:id <span class="se">\</span>
  -H <span class="s2">"Accept: application/vnd.api+json;revision=1"</span> <span class="se">\</span>
  -H <span class="s2">"Content-Type: application/vnd.api+json"</span> <span class="se">\</span>
  -H <span class="s2">"Authorization: Bearer [TOKEN]"</span> <span class="se">\</span>
  -H <span class="s2">"X-Api-Key: [KEY]"</span> <span class="se">\</span>
  -H <span class="s2">"X-Gw-Ims-Org-Id: [ORG_ID]"</span> <span class="se">\</span>
  -X PATCH <span class="se">\</span>
  -d <span class="se">\</span>
<span class="s1">'
{
  "data": {
    "attributes": {
    },
    "meta": {
      "action": "release_private"
    },
    "id": "EP27e9323eb585411fae6086fc78a3b70b",
    "type": "extension_packages"
  }
}'</span>
</code></pre>
</div>

  <h1 id="example-response">Example Response<a class="anchorjs-link " href="#example-response" aria-label="Anchor link for: example response" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; line-height: 1; padding-left: 0.375em;"></a></h1>
<div class="highlight">
  <em>200 OK</em>
  <pre><code><span class="p">{</span><span class="w">
  </span><span class="nt">"data"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
    </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"EP27e9323eb585411fae6086fc78a3b70b"</span><span class="p">,</span><span class="w">
    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"extension_packages"</span><span class="p">,</span><span class="w">
    </span><span class="nt">"attributes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
      </span><span class="nt">"actions"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::actions::custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"oneOf"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"language"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"source"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"global"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"language"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"javascript"</span><span class="w">
                    </span><span class="p">]</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"language"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"source"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"language"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"html"</span><span class="w">
                    </span><span class="p">]</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/actions/customCode.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"actions/customCode.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Custom Code"</span><span class="w">
        </span><span class="p">}</span><span class="w">
      </span><span class="p">],</span><span class="w">
      </span><span class="nt">"author"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
        </span><span class="nt">"url"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://adobe.com"</span><span class="p">,</span><span class="w">
        </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Adobe Systems"</span><span class="p">,</span><span class="w">
        </span><span class="nt">"email"</span><span class="p">:</span><span class="w"> </span><span class="s2">"reactor@adobe.com"</span><span class="w">
      </span><span class="p">},</span><span class="w">
      </span><span class="nt">"availability"</span><span class="p">:</span><span class="w"> </span><span class="s2">"private"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"cdn_path"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://assets.adobedtm.com/staging/extensions/EP27e9323eb585411fae6086fc78a3b70b"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"conditions"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::browser"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"browser"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"browsers"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"browsers"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"Chrome"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Firefox"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"IE"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Edge"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Safari"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Mobile Safari"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/browser.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/browser.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Browser"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Technology"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::cookie"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"cookie"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"value"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^[A-Za-z0-9!#$%&amp;'*+\-.^_|~]+$"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/cookie.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/cookie.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Cookie"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Data"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"source"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/customCode.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/customCode.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Custom Code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Data"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::date-range"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"date-range"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"end"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"format"</span><span class="p">:</span><span class="w"> </span><span class="s2">"date-time"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"start"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"format"</span><span class="p">:</span><span class="w"> </span><span class="s2">"date-time"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"timezone"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/dateRange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/dateRange.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Date Range"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::device-type"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"device-type"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"deviceTypes"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"deviceTypes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"Desktop"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"iPhone"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"iPad"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"iPod"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Nokia"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Windows Phone"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Blackberry"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Android"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/deviceType.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/deviceType.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Device Type"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Technology"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::domain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"domain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"domains"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"domains"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/domain.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/domain.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Domain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::hash"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"hash"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"hashes"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"hashes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"minItems"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/hash.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/hash.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Hash"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::landing-page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"landing-page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"page"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"page"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"pageIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/landingPage.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/landingPage.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Landing Page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::max-frequency"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"max-frequency"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"oneOf"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"count"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"unit"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"unit"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"pageView"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"session"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"visitor"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"second"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"minute"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"day"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"week"</span><span class="p">,</span><span class="w">
                      </span><span class="s2">"month"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"count"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"unit"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"unit"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"visitor"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/maxFrequency.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/maxFrequency.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Max Frequency"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::new-returning-visitor"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"new-returning-visitor"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"isNewVisitor"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"isNewVisitor"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/newReturningVisitor.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/newReturningVisitor.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"New/Returning Visitor"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::operating-system"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"operating-system"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"operatingSystems"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"operatingSystems"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"Windows"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"MacOS"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Linux"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Unix"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"iOS"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"Android"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/operatingSystem.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/operatingSystem.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Operating System"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Technology"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::page-views"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"page-views"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"operator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"count"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"duration"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"count"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"duration"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"lifetime"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"session"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/pageViews.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/pageViews.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Views"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::path"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"path"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"paths"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"paths"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"minItems"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/path.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/path.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Path Without Query String"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::path-and-querystring"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"path-and-querystring"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"paths"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"paths"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"minItems"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/pathAndQuerystring.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/pathAndQuerystring.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Path And Query String"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::protocol"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"protocol"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"protocol"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"protocol"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"http:"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"https:"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/protocol.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/protocol.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Protocol"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::screen-resolution"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"screen-resolution"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"widthOperator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"width"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"heightOperator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"height"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"width"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"height"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"widthOperator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"heightOperator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/screenResolution.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/screenResolution.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Screen Resolution"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Technology"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::sampling"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"sampling"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"rate"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"rate"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"maximum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/sampling.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/sampling.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Sampling"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::sessions"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"sessions"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"operator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"count"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"count"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/sessions.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/sessions.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Sessions"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::subdomain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"subdomain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"subdomains"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"subdomains"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"minItems"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/subdomain.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/subdomain.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Subdomain"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::time-on-site"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"time-on-site"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"operator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"minutes"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"minutes"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/timeOnSite.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/timeOnSite.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Time On Site"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::traffic-source"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"traffic-source"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"source"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"sourceIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/trafficSource.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/trafficSource.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Traffic Source"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Engagement"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::query-string-parameter"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"query-string-parameter"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"value"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/queryStringParameter.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/queryStringParameter.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Query String Parameter"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"URL"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::value-comparison"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"value-comparison"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"oneOf"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"leftOperand"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"comparison"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"rightOperand"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"comparison"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"operator"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                          </span><span class="s2">"equals"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"doesNotEqual"</span><span class="w">
                        </span><span class="p">],</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                      </span><span class="p">},</span><span class="w">
                      </span><span class="nt">"caseInsensitive"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"leftOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^%([^%]+)%$"</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"rightOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"oneOf"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
                      </span><span class="p">},</span><span class="w">
                      </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">]</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"leftOperand"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"comparison"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"rightOperand"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"comparison"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"operator"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                          </span><span class="s2">"contains"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"doesNotContain"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"startsWith"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"doesNotStartWith"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"endsWith"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"doesNotEndWith"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"matchesRegex"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"doesNotMatchRegex"</span><span class="w">
                        </span><span class="p">],</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                      </span><span class="p">},</span><span class="w">
                      </span><span class="nt">"caseInsensitive"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"leftOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^%([^%]+)%$"</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"rightOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"leftOperand"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"comparison"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"rightOperand"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"comparison"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"operator"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                          </span><span class="s2">"lessThan"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"lessThanOrEqual"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"greaterThan"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"greaterThanOrEqual"</span><span class="w">
                        </span><span class="p">],</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"leftOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^%([^%]+)%$"</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"rightOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"oneOf"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
                      </span><span class="p">},</span><span class="w">
                      </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                        </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^%([^%]+)%$"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">]</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="p">{</span><span class="w">
                </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"leftOperand"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"comparison"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"comparison"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                      </span><span class="s2">"operator"</span><span class="w">
                    </span><span class="p">],</span><span class="w">
                    </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"operator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                        </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                          </span><span class="s2">"isTrue"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"isTruthy"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"isFalse"</span><span class="p">,</span><span class="w">
                          </span><span class="s2">"isFalsy"</span><span class="w">
                        </span><span class="p">],</span><span class="w">
                        </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                      </span><span class="p">}</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"leftOperand"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                    </span><span class="nt">"pattern"</span><span class="p">:</span><span class="w"> </span><span class="s2">"^%([^%]+)%$"</span><span class="w">
                  </span><span class="p">}</span><span class="w">
                </span><span class="p">},</span><span class="w">
                </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/valueComparison.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/valueComparison.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Value Comparison"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Data"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::variable"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"variable"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"value"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/variable.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/variable.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Variable"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Data"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::conditions::window-size"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"window-size"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"widthOperator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"width"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"heightOperator"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"height"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"width"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"height"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"widthOperator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"heightOperator"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"&gt;"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"="</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"&lt;"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/conditions/windowSize.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"conditions/windowSize.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Window Size"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Technology"</span><span class="w">
        </span><span class="p">}</span><span class="w">
      </span><span class="p">],</span><span class="w">
      </span><span class="nt">"configuration"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"created_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2018-08-31T16:01:51.551Z"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"data_elements"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::cookie"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"cookie"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/cookie.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/cookie.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Cookie"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"source"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/customCode.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/customCode.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Custom Code"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::dom-attribute"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dom-attribute"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"elementSelector"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"elementProperty"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"elementProperty"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/domAttribute.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/domAttribute.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"DOM Attribute"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::local-storage"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"local-storage"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/localStorage.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/localStorage.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Local Storage"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::page-info"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"page-info"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"attribute"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"attribute"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"url"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"hostname"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"pathname"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"protocol"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"referrer"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"title"</span><span class="w">
                </span><span class="p">]</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/pageInfo.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/pageInfo.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Info"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::query-string-parameter"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"query-string-parameter"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"caseInsensitive"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/queryStringParameter.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/queryStringParameter.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Query String Parameter"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::random-number"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"random-number"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"min"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"max"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"max"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"integer"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"min"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"integer"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/randomNumber.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/randomNumber.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Random Number"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::session-storage"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"session-storage"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/sessionStorage.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/sessionStorage.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Session Storage"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::javascript-variable"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"javascript-variable"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"path"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"path"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/javascriptVariable.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/javascriptVariable.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"JavaScript Variable"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::dataElements::visitor-behavior"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"visitor-behavior"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"attribute"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"attribute"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"landingPage"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"trafficSource"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"minutesOnSite"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"sessionCount"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"sessionPageViewCount"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"lifetimePageViewCount"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"isNewVisitor"</span><span class="w">
                </span><span class="p">]</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/dataElements/visitorBehavior.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dataElements/visitorBehavior.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Visitor Behavior"</span><span class="w">
        </span><span class="p">}</span><span class="w">
      </span><span class="p">],</span><span class="w">
      </span><span class="nt">"description"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Provides default event, condition, and data element types available to all Launch users."</span><span class="p">,</span><span class="w">
      </span><span class="nt">"display_name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Kessel Test"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"events"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/blur.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/blur.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Form"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/change.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/change.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Form"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::click"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"click"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"anchorDelay"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/click.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/click.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Click"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mouse"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"custom-code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"source"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"source"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/customCode.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/customCode.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Custom Code"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::custom-event"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"custom-event"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"type"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/customEvent.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/customEvent.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Custom Event"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::data-element-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"data-element-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"name"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/dataElementChange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/dataElementChange.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Data Element Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::direct-call"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"direct-call"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"identifier"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"identifier"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/directCall.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/directCall.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Direct Call"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::dom-ready"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dom-ready"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/domReady.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"DOM Ready"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Load"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::element-exists"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"element-exists"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"elementSelector"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/elementExists.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/elementExists.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Element Exists"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-ended"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-ended"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaEnded.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaEnded.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Ended"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::enters-viewport"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"enters-viewport"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"elementSelector"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"delay"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/entersViewport.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/entersViewport.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Enters Viewport"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/focus.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/focus.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Form"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::hover"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"hover"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"elementSelector"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"delay"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/hover.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/hover.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Hover"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mouse"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::key-press"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"key-press"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/keyPress.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/keyPress.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Key Press"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Keyboard"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-loaded-data"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-loaded-data"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaLoadedData.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaLoadedData.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Loaded Data"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::history-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"history-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/historyChange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"History Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::mousedown"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"mousedown"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mousedown.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mousedown.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mousedown"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mouse"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::window-loaded"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"window-loaded"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/windowLoaded.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Window Loaded"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Load"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::orientation-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"orientation-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/orientationChange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Orientation Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mobile"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::page-bottom"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"page-bottom"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/pageBottom.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Bottom"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Load"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::library-loaded"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"library-loaded"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/libraryLoaded.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Library Loaded (Page Top)"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Page Load"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-pause"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-pause"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaPause.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaPause.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Pause"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-play"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-play"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaPlay.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaPlay.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Play"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-stalled"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-stalled"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaStalled.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaStalled.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Stalled"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::submit"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"submit"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/submit.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/submit.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Submit"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Form"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::tab-blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"tab-blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/tabBlur.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Tab Blur"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Browser"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::tab-focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"tab-focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/tabFocus.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Tab Focus"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Browser"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::time-on-page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"time-on-page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"timeOnPage"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"timeOnPage"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/timeOnPage.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/timeOnPage.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Time On Page"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Other"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-time-played"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-time-played"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
              </span><span class="s2">"amount"</span><span class="p">,</span><span class="w">
              </span><span class="s2">"unit"</span><span class="w">
            </span><span class="p">],</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"unit"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"enum"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                  </span><span class="s2">"percent"</span><span class="p">,</span><span class="w">
                  </span><span class="s2">"second"</span><span class="w">
                </span><span class="p">],</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"amount"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"number"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minimum"</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaTimePlayed.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaTimePlayed.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Time Played"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::media-volume-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"media-volume-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
            </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"$schema"</span><span class="p">:</span><span class="w"> </span><span class="s2">"http://json-schema.org/draft-04/schema#"</span><span class="p">,</span><span class="w">
            </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
              </span><span class="nt">"bubbleStop"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementSelector"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"elementProperties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"array"</span><span class="p">,</span><span class="w">
                </span><span class="nt">"items"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                  </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"object"</span><span class="p">,</span><span class="w">
                  </span><span class="nt">"required"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
                    </span><span class="s2">"name"</span><span class="p">,</span><span class="w">
                    </span><span class="s2">"value"</span><span class="w">
                  </span><span class="p">],</span><span class="w">
                  </span><span class="nt">"properties"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                    </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="p">,</span><span class="w">
                      </span><span class="nt">"minLength"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"value"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"string"</span><span class="w">
                    </span><span class="p">},</span><span class="w">
                    </span><span class="nt">"valueIsRegex"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                      </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
                    </span><span class="p">}</span><span class="w">
                  </span><span class="p">},</span><span class="w">
                  </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
                </span><span class="p">}</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfParent"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">},</span><span class="w">
              </span><span class="nt">"bubbleFireIfChildFired"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
                </span><span class="nt">"type"</span><span class="p">:</span><span class="w"> </span><span class="s2">"boolean"</span><span class="w">
              </span><span class="p">}</span><span class="w">
            </span><span class="p">},</span><span class="w">
            </span><span class="nt">"additionalProperties"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/mediaVolumeChange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"viewPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"events/mediaVolumeChange.html"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media Volume Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Media"</span><span class="w">
        </span><span class="p">},</span><span class="w">
        </span><span class="p">{</span><span class="w">
          </span><span class="nt">"id"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test::events::zoom-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"zoom-change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"schema"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
          </span><span class="p">},</span><span class="w">
          </span><span class="nt">"libPath"</span><span class="p">:</span><span class="w"> </span><span class="s2">"src/lib/events/zoomChange.js"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"displayName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Zoom Change"</span><span class="p">,</span><span class="w">
          </span><span class="nt">"categoryName"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mobile"</span><span class="w">
        </span><span class="p">}</span><span class="w">
      </span><span class="p">],</span><span class="w">
      </span><span class="nt">"exchange_url"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"hosted_lib_files"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"icon_path"</span><span class="p">:</span><span class="w"> </span><span class="s2">"resources/icons/core.svg"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"main"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"kessel-test"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"resources"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"shared_modules"</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span><span class="w">
      </span><span class="nt">"status"</span><span class="p">:</span><span class="w"> </span><span class="s2">"succeeded"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"platform"</span><span class="p">:</span><span class="w"> </span><span class="s2">"web"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"updated_at"</span><span class="p">:</span><span class="w"> </span><span class="s2">"2018-08-31T16:02:00.725Z"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"version"</span><span class="p">:</span><span class="w"> </span><span class="s2">"1.2.0"</span><span class="p">,</span><span class="w">
      </span><span class="nt">"view_base_path"</span><span class="p">:</span><span class="w"> </span><span class="s2">"dist/"</span><span class="w">
    </span><span class="p">},</span><span class="w">
    </span><span class="nt">"links"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
      </span><span class="nt">"self"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://reactor.adobe.io/extension_packages/EP27e9323eb585411fae6086fc78a3b70b"</span><span class="w">
    </span><span class="p">}</span><span class="w">
  </span><span class="p">}</span><span class="w">
</span><span class="p">}</span></code></pre>
</div>

</section>
