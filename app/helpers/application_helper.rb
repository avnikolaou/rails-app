module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) + " " +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, class: style, method: :delete
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting from session #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    AvNikolaouViewTool::Renderer.copyright 'Avraam Nikolaou', 'Developed with love'
  end
end
