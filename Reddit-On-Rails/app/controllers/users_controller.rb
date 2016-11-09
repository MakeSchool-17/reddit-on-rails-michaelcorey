class UsersController < ApplicationController



def index
  @users = User.all
end

  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        #   redirect_to @user, notice: 'User was successfully created'
        flash[:notice] =  'User was successfully created.'

        redirect_to()
      else
          render action: 'new'
      end
  end

  def show
  end

  def user_params
      params.require(:user).permit(:username, :email, :password)
  end

end
