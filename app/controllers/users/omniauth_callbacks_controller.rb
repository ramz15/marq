class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    # You need to implement the method below in your model
    @user = User.find_for_facebook_oauth(env["omniauth.auth"], current_user)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to root_path
    end
  end
  
  # need this method for /auth/:provider that results in a 404
  # reason is here: http://stackoverflow.com/questions/5531263/omniauth-doesnt-work-with-route-globbing-in-rails3
  def passthru
    # only validate the attached invite code if the user is not logged in
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
  
  
end
  