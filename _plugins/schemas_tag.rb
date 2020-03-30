class Jekyll::SchemasTag < Liquid::Tag

  def initialize(tag_name, fixture, tokens)
    super
    @fixture = "fixtures/#{fixture.strip}.json"
    require 'pry'; binding.pry
    @schema = ApiSpecification.instance.schemas.dig(@fixture)
  end

  def render(context)
    render_template =<<EOT
<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item is-open" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Response Schema</button>
      <svg class="spectrum-Icon spectrum-UIIcon-ChevronRightMedium spectrum-Accordion-itemIndicator" focusable="false" aria-hidden="true">
        <use xlink:href="#spectrum-css-icon-ChevronRightMedium" />
      </svg>
    </h3>

    <div class="spectrum-Accordion-itemContent" role="region">
      #{render_schema}
    </div>
  </div>
</div>
EOT


    render_template
  end

  def render_schema
    template =<<EOT
<div class="highlight">
  {{schema}}
</div>
EOT

    template.sub!('{{schema}}', render_rouge(JSON.pretty_generate(@schema), 'json'))
  end

  def render_rouge(code, lang)
    formatter = Rouge::Formatters::HTML.new(wrap: false)
    lexer = Rouge::Lexer.find_fancy(lang, code) || Rouge::Lexers::PlainText
    result = formatter.format(lexer.lex(code))
    "<pre><code>#{result}</code></pre>"
  end
end
