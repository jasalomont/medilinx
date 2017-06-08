class UsersController < ApplicationController


  def show
    @users = User.all

    render("users/index.html.erb")
  end

  def read
    @user = User.find(params[:id])
    render("users/show.html.erb")
  end

end
