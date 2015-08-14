class UsersController < ApplicationController
  # get
  def signup
    # render a view and let a user register
    # my only job... is to render a form! yay! i have a job :)

  end

  # post
  def confirmation
    # puts '-----users#confirmation-------'
    # puts user_params
    # puts '-----end users#confirmation-------'
    # post request that handles registration/says thanks

    @user = User.new(user_params)
    if @user.save
      # thanks! you're in!
      session[:user_id] = @user.id

      #Destination.where(:user_id => session[:user_id].to_i)

    else
      # womp womp.. error msg
      @message = 'User account exists or passwords do not match.'
      render 'users/signup'
    end

  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
