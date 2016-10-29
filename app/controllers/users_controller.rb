class UsersController < ApplicationController
	  before_action :authenticate_user!

	  # GET /products/new
  def new
    @user = User.new
  end

  # POST /products
  # POST /products.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end