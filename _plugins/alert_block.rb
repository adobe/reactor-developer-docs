class Jekyll::AlertBlock < Liquid::Block
  def initialize(tag_name, markup, tokens)
    super
    args = markup.to_s.split(',')
    @alert_type = args.fetch(0, nil)&.strip
    @title = args.fetch(1, nil)&.strip
  end

  def render(content)
    text = super
    site = content.registers[:site]
    converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
    formatted_content = converter.convert(text)
    buildAlertMarkup(formatted_content)
  end

  def alertTypeForColor(color)
    
  end
  
  def buildAlertMarkup(content)
    case @alert_type
    when 'success' then
      icon = 'Success'
    when 'info' then
      icon = 'Info'
    when 'warning' then
      icon = 'Alert'
    when 'help' then
      icon = 'Help'
    when 'error' then
      icon = 'Alert'
    else
      icon = 'Info'
    end

    markup = <<EOT
<div class="spectrum-Alert spectrum-Alert--#{@alert_type}">
  <svg class="spectrum-Icon spectrum-UIIcon-#{icon}Medium spectrum-Alert-icon" focusable="false" aria-hidden="true">
    <use xlink:href="#spectrum-css-icon-#{icon}Medium" />
  </svg>
EOT
    
    markup += "<div class=\"spectrum-Alert-header\">#{@title}</div>" if @title
    markup += <<EOT
  <div class="spectrum-Alert-content">#{content}</div>
</div>
EOT
    markup
  end
end
