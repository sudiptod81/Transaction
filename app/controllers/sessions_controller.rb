class SessionsController < ApplicationController
  def new
    @user=User.find(1)
  end
  def create
    user = User.find_by_username(params[:session][:username])
    puts "ENTERED"
    Rails.logger.debug "create"
    if user && user.authenticate(params[:session][:password])
      puts "IFF"
      sign_in user
      puts "SIGNED IN"
      redirect_to search
    else
      #flash.now[:error] = 'Invalid username/password combination'
      puts "ERROR"
    end
  end
  def destroy
    sign_out
    #self.current_user = nil
    cookies.delete(:remember_token)
  end
end
