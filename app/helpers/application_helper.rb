module ApplicationHelper

def is_active?(page_name) 
  return (params[:action] == page_name)
end

def get_nav_class(page_name)
  return (is_active?(page_name)) ? "nav_link_selected" : "nav_link"
end

def obfuscate_email(email)
  return email.slice(0, email.index('@') + 2) +
    '<span class="displaynone">null</span>' +
    email.slice(email.index('@') + 2, email.length)
end

def cust_stylesheet_link(sheet_name) 
  return stylesheet_link_tag(sheet_name) + 
    stylesheet_link_tag(sheet_name + '_print', :media => 'print')
end

end
