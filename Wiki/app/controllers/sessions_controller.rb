class SessionsController < ApplicationController
before_action :show_all
  def new
  end

  def create
      #login from the new will go this create

      # need to ensure we find the user in the database
      user = User.find_by(email: params[:email])
      # assuming we find the user, we do some logic to check if the password is correct
      if user && user.authenticate(params[:password])

      #  if user.presence? && user.authenticate(params[:password]) (we can also check if the presence is found)
      #  redirect_to root_path, notice: "Logged In"
          session[:user_id] = user.id
          redirect_to snoopies_path, notice: "Logged In"
      else
        # if the user info is wrong, it will ask the users to type in again
       # flash will make it display immediately
        flash.now.alert = "Invalid login details"
        render "new"
  end
    end

    def destroy
      session[:user_id] = nil
        redirect_to root_path, notice: "Logged Out"
    end
end
