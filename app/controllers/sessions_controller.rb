class SessionsController < ApplicationController
  def new
    @user=User.find(1)
    #@user=User.new(:username=>'bleh',:password=>'bleh')
  end
  def create
    user = User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to search
    else
      flash.now[:error] = 'Invalid username/password combination'
    end
  end
  def destroy
  end
end
