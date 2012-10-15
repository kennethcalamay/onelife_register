module VolunteersHelper
  def build_html_tag(field, type, f, options)
    f.send(:"#{type}_field", field, options)
  end

  def custom_input(field, public_label, type, f, options)
    html = <<-HTML
    <div class='control-group'>
      #{f.label field, public_label, class: 'control-label'}
      <div class='controls'>
        #{build_html_tag(field, type, f, options)}
      </div>
    </div>
    HTML
  end

  def custom_input_with_errors(field, public_label, type, f, options)
    html = <<-HTML
    <div class='control-group error'>
      #{f.label field, public_label, class: 'control-label'}
      <div class='controls'>
        #{build_html_tag(field, type, f, options)}
        <span class="help-inline">#{resource.errors[field].map{|e| e}.join(', ') }</span>
      </div>
    </div>
    HTML
  end


  def onelife_custom_input(field, public_label, type, f, options={class:'span4'})
    if resource.errors[field].present?
      html = custom_input_with_errors(field, public_label, type, f, options)
    else
      html = custom_input(field, public_label, type, f, options)
    end

    html.html_safe
  end

end
