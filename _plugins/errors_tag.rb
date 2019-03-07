class Jekyll::ErrorsTag < Liquid::Tag

  ERROR_SPEC_TEMPLATE =<<EOT
<h4><span class="docutils literal"><code>{{code}}</code></span></h4>
<p>{{description}}</p>
EOT

  def initialize(tag_name, markup, tokens)
    super
    @error_spec = ApiSpecification.instance.errors
  end

  def render(context)
    render_template =<<EOT
<div class="field-list">
  {{error_spec}}
</div>
EOT
    rendered_output = ''

    @error_spec.each do |err|
      error_spec = ERROR_SPEC_TEMPLATE.dup
      error_spec.sub!('{{title}}', err['title'])
      error_spec.sub!('{{code}}', err['code'])
      error_spec.sub!('{{description}}', err['description'] || '')
      rendered_output += error_spec + "\n"
    end

    render_template.sub('{{error_spec}}', rendered_output)
  end
end
