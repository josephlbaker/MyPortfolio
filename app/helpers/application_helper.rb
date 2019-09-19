module ApplicationHelper
  def login_helper style
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, you are on the #{layout_name} page."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    BakerViewTool::Renderer.copyright "Joseph Baker", "All rights reserved"
  end

  def current_class?(test_path)
    return 'nav-link active' if request.path == test_path
    'nav-link'
  end
end
