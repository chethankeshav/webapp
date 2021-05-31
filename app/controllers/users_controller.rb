class UsersController < ApplicationController
  def login
    @user = User.where(email: params[:email], passowrd: params[:passowrd])
    if(@user.present?)
      render template: "/users/welcome"
    else
      flash[:notice]= "User not found"
      redirect_to "/"
    end
  end
 
  def signup
    @user=User.new(name: params[:name],email: params[:email],password: params[:password], phone_no: params[:phone_no], address: params[:Address])
    if @user.save
      flash[:notice]="User addded successfully"
      redirect_to "/"
    else
      flash[:notice]="Error! try again"
      redirect_to "/"
    end
  end
end
