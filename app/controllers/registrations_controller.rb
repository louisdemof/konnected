class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if current_user.student
      root_path
    else
      new_project_path
    end
  end

  def after_inactive_sign_up_path_for(resource)
    if current_user.student
      root_path
    else
      new_project_path
    end
  end
end
