class UsersController < ApplicationController

  def update
    user = User.find_by(id: params["id"])
    user.email = params["email"]
    user.password = params["password"]
    user.first_name = params["first_name"]
    user.last_name = params["last_name"]
    user.save
    redirect_to "/users"
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def create
    User.create :email => params["email"], 
    			:password => params["password"],
    			:first_name => params["first_name"],
    			:last_name => params["last_name"]
    redirect_to "/users"
  end

end