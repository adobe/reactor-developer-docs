require 'rouge'

class Jekyll::ScenarioTag < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super
    args = markup.to_s.split
    endpoint = args.fetch(0, nil)
    scenario = args.fetch(1, nil)
    @spec = ApiSpecification.instance.spec
    @endpoint = ApiSpecification.instance.endpoint(endpoint) if endpoint
    @scenario = ApiSpecification.instance.scenario(scenario, @endpoint)
  end

  def build_curl_request
    <<EOF
curl https://reactor.adobe.io#{@endpoint['path']} \\
  -H "Accept: application/vnd.api+json;revision=1" \\
  -H "Content-Type: application/vnd.api+json" \\
  -H "Authorization: Bearer [TOKEN]" \\
  -H "X-Api-Key: [KEY]" \\
  -H "X-Gw-Ims-Org-Id: [ORG_ID]" \\
  #{build_curl_request_method}
  #{build_curl_request_options}
EOF
  end

  def build_curl_request_options
    if @scenario['request']
      "-d \\\n'\n#{JSON.pretty_generate(@scenario['request'])}'"
    end
  end

  def build_curl_request_method
    request_body_supported = !['DELETE', 'GET'].include?(@scenario['method'])
    suffix = (request_body_supported && @scenario['request']) ? ' \\' : ''
    "-X #{@scenario['method']}#{suffix}"
  end

  def render(context)
    result = <<EOF
<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Endpoint Definition</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      #{render_definition}
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
      #{render_request}
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
      #{render_response}
    </div>
  </div>
</div>
EOF
    result
  end

  def render_definition
    <<EOF
<div class="highlight">
  #{render_rouge("#{@scenario['method']}  #{@scenario['endpoint']}", 'bash')}
</div>
EOF
  end

  def render_request
    <<EOF
<div class="highlight">
  #{render_rouge(build_curl_request, 'bash')}
</div>
EOF
  end

  def render_response
    template =<<EOT
<div class="highlight">
  <em>#{@scenario['response_code']} #{@scenario['response_message']}</em>
  {{response}}
</div>
EOT

    response = if @scenario['response']
                 render_rouge(
                   JSON.pretty_generate(@scenario['response']),
                   'json'
                 )
               else
                 ''
               end

    template.sub!('{{response}}', response)
  end

  def render_rouge(code, lang)
    formatter = Rouge::Formatters::HTML.new(wrap: false)
    lexer = Rouge::Lexer.find_fancy(lang, code) || Rouge::Lexers::PlainText
    result = formatter.format(lexer.lex(code))
    "<pre><code>#{result}</code></pre>"
  end
end
