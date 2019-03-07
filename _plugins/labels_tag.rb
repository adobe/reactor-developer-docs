class Jekyll::LabelsTag < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super
  end

  def render(context)
    labels = context['page']['labels'] || []
    markup = ''
    labels.each do |l|
      markup += markup_for_label(l)
    end
    "<div class=\"labels\">#{markup}</div>"
  end
  
  def markup_for_label(label)
    color = 'grey'
    text = label

    case label
    when 'unstable'
      color = 'orange'
      text = 'Unstable'
    when 'alpha'
      color = 'fuchsia'
      text = 'Alpha'
    when 'beta'
      color = 'blue'
      text = 'Beta'
    end
    
    markup = <<EOF
<span class="spectrum-Label spectrum-Label--#{color}">#{text}</span>
EOF
  end
end
