class SharingsController < ApplicationController
  def new
    @sharing = Sharing.new
  end

  def create
    @sharing = Sharing.new(sharing_params)
    @sharing.user_id = current_user.id
    if  @sharing.save
        redirect_to user_path(current_user)
    else
      flash[:notice] = "メールアドレスが重複しているか空白です。"
      render :new
    end
  end

  def edit
    @sharing = Sharing.find(params[:id])
  end

  def update
    @sharing = Sharing.find(params[:id])
    @sharing.update(sharing_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @sharing = Sharing.find(params[:id])
    @sharing.destroy
    redirect_to user_path(current_user)
  end

  private

  def sharing_params
    params.require(:sharing).permit(:name, :nickname, :email, :favorite_food, :hobby, :type, :profile_image)
  end
end
