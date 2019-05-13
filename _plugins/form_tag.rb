class Jekyll::FormTag < Liquid::Tag

  FIELD_TEMPLATE =<<EOT
<div class="spectrum-Table-row" style="display: flex" role="row">
  <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
    <code>{{name}}</code>
  </div>
  <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
    {{type}}
  </div>
  <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
    {{requirement}}
  </div>
  <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
    {{description}}
  </div>
</div>
EOT

  def initialize(tag_name, form_name, tokens)
    super
    @schema = ApiSpecification.instance.schema(form_name.strip.split('.').first)
    @forms = ApiSpecification.instance.form(form_name.strip)
  end

  def render(content)
    return unless @forms

    rendered_forms = ''

    @forms.each do |form|
      template =<<EOT
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
          {{fields}}
        </div>
      </div>
    </div>
  </div>
</div>
EOT
      form.each do |fields|
        rendered_fields = render_fields(fields) + "\n"
        rendered_forms += "<h3>OR</h3>\n" unless rendered_forms.empty?
        rendered_forms += template.sub!('{{fields}}', rendered_fields)
      end
    end

    rendered_forms
  end

  def render_fields(fields)
    rendered_fields = ''
    sorted_fields = fields.sort_by { |o| [o[1]['required'] == 'true' ? 0 : 1, o[0]] }
    sorted_fields.each do |name, definition|
      requirement = definition['required'] == 'true' ? 'required' : 'optional'
      description = field_description(name) || definition.dig('description')
      type = if definition['type'].is_a? Array
               definition['type'].keep_if { |t| t != "null" }.join(', ')
             else
               definition['type']
             end

      template = FIELD_TEMPLATE.dup
      template.sub!('{{name}}', name)
      template.sub!('{{requirement}}', requirement)
      template.sub!('{{description}}', description || '')
      template.sub!('{{type}}', type.nil? ? 'string' : type)
      rendered_fields += template + "\n"
    end
    rendered_fields
  end

  def field_description(name)
    return unless @schema
    @schema.dig('properties', 'attributes', 'properties', name, 'description')
  end
end
