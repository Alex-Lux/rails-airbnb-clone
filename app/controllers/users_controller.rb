class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit

  end

  def show
    @pending_pethome_bookings = []
    current_user.pethomes.each do |pethome|
      @pending_pethome_bookings << pethome.bookings.where(status: "pending")
    end
    @pending_pethome_bookings.flatten!

    @approved_pethome_bookings = []
    current_user.pethomes.each do |pethome|
      @approved_pethome_bookings << pethome.bookings.where(status: "approved")
    end
    @approved_pethome_bookings.flatten!



    @pending_my_bookings = current_user.bookings.where(status: "pending")
    @approved_my_bookings = current_user.bookings.where(status: "approved")
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
    end
end
