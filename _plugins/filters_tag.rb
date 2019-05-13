class Jekyll::FiltersTag < Liquid::Tag

  FIELD_TEMPLATE =<<EOT
<div class="spectrum-Table-row" style="display: flex" role="row">
  <div class="spectrum-Table-cell" style="flex: 1" role="gridcell">
    <code>{{field}}</code>
  </div>
</div>
EOT

  def initialize(tag_name, resource, tokens)
    super
    @resource = resource.strip
    @filters = ApiSpecification.instance.filters.dig(@resource)
  end

  def render(context)
    render_template =<<EOT
<div class="spectrum-Accordion" role="region">
  <div class="spectrum-Accordion-item" role="presentation">

    <h3 class="spectrum-Accordion-itemHeading no-anchor">
      <button class="spectrum-Accordion-itemHeader" type="button" onClick="toggleAccordion(this)" aria-expanded="true">Filters</button>
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
        </div>
        <div class="spectrum-Table-body" role="rowgroup">
          {{filter_spec}}
        </div>
      </div>
    </div>
  </div>
</div>
EOT
    rendered_output = ''

    @filters&.sort.each do |f|
      filter_spec = FIELD_TEMPLATE.dup
      filter_spec.sub!('{{field}}', f)
      rendered_output += filter_spec + "\n"
    end

    render_template.sub('{{filter_spec}}', rendered_output)
  end
end
