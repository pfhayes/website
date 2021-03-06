require 'uri'

module ApplicationHelper

def is_active?(page_name)
  return (params[:action] == page_name)
end

def get_nav_class(page_name)
  return (is_active?(page_name)) ? "nav_link_selected" : "nav_link"
end

def obfuscated_email()
  def obfuscate_email(email)
    return email.slice(0, email.index('@') + 2) +
      '<span class="displaynone">null</span>' +
      email.slice(email.index('@') + 2, email.length)
  end

  return obfuscate_email(MY_EMAIL)
end

def cust_stylesheet_link(sheet_name)
  return stylesheet_link_tag(sheet_name) +
    stylesheet_link_tag(sheet_name + '_print', :media => 'print')
end

def get_link_to(*args, &block)
  target_url = args.second || CANON_URL
  if (target_url.is_a? Symbol) || (HOSTS.include?(URI(target_url).host))
    return link_to(*args, &block)
  else
    new_args = args[0..1] + [(args[2] || {}).merge(:target => "_blank")]
    return link_to(*new_args, &block)
  end
end

end
