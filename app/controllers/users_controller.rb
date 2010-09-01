class UsersController < ApplicationController
  before_filter :require_user, :only => [:index, :edit, :update, :destroy]
  
	def index
		@users = User.all
	end
	
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
			flash[:notice] = "New user successfully created"
      redirect_back_or_default '/'
    else
      render :action => :new
    end
  end
  
  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      redirect_to '/', :notice => "User updated"
    else
      render :action => :edit
    end
  end
	
	def destroy
		name = @current_user.login
		@current_user.destroy
		redirect_to '/', :notice => "The user '#{name}' has been deleted."
	end
	
end