class SessionController < ApplicationController
  session[:current_user_id] = @user.id
end
