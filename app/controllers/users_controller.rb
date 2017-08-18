class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit

  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_user
      @user = current_user
    end

    def user_params
      params.fetch(:user, {})
      params.require(:user).permit(:first_name, :last_name, :email, :photo, :photo_cache)
    end
end
