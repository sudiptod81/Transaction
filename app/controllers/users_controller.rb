class UsersController < ApplicationController
  def show
    puts " SHOW"
    redirect_to "search"
  end
  def update
    #if signed_in?
    #  redirect_to "/search"
    #else
      redirect_to "/search/both"
    #end
  end
  def create
      puts "CREATE"
      @user = User.new(:username=>'sudiptod81',:password=>'sudiptod81')
      if @user.save
        sign_in @user
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
      else
        render 'new'
      end
    end
  end
