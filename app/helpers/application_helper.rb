module ApplicationHelper
  def login_helper(cls: '')
    if current_user.is_a? GuestUser
      (link_to 'Register', new_user_registration_path, class: cls) +
          (link_to 'Login', new_user_session_path, class: cls)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: cls
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag :p, greeting, class: 'source-greeting'
    end
  end

  def copyright_generator
    @copyright = TagirViewTool::Renderer.copyright 'Tagir Ahmadeev', 'All right reserved'
  end
end
