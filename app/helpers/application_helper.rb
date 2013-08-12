module ApplicationHelper

  # --- fetch strings from en.header_text.yml
  
  def get_header_text (params)
    # options hash:
    #   page_name: page name prefix to key, e.g. "message.index" for "message.index.h1"
    #   element: YML key (required)
    #   add_in: additional text passed through to YML entry
    #   no_scope: if true, leave :scope option blank on t() call
    #   no_msg: if true, don't display fix me message if YML entry or default aren't found
    
    page_name, element, add_in, no_scope, no_msg = params.values_at(:page_name, :element, :add_in, :no_scope, :no_msg)
    return fix_me_statement("element") if element.blank?
   
    scope = (no_scope || page_name.blank?) ? '' : "header_text"
    key = "#{page_name}.#{element}"
    msg = (no_msg) ? '' : fix_me_statement(key)
    default_key = "#{(scope.blank?) ? 'header_text.' : ''}default.#{element}"

    t(key, scope: scope, branding: branding_text, add_in: "#{add_in}", default: [:"#{default_key}", msg])
  end

   def get_view_text(element)
    return fix_me_statement("element") if element.blank?
    # assume "lazy" lookup based on calling controller and action
    #   e.g. ".h1" for view help/index.html.erb rendered by controler/action help/index
    t(".#{element}", default: fix_me_statement(".#{element}"))
  end

  def branding_text
    t('branding', scope: :"header_text", default: '')
  end

  def fix_me_statement(thing = "")
    t('fix_me', scope: :"header_text", thing: thing)
  end
  # --- end en.header_text.yml
  
  
  # --- set meta tags

  def seo_tag(element, page_name, add_options={})
    content_for (:"#{element}") {get_header_text({element: element, page_name: page_name}.merge(add_options))}
  end
  
  def yield_or_default(section, default="")
    tag_text = content_for(section)
    # if content_for() not set, use "lazy" lookup to check locale file for controller/action entry
    if tag_text.blank?
      tag_text = get_header_text(element: section, page_name: "#{controller_name}.#{action_name}", no_scope: true, no_msg: true)
      tag_text = default if tag_text.blank? # use optional default as last resort
    end
    tag_text
  end
  # --- end set meta tags

end
