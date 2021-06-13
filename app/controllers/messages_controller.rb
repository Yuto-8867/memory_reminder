class MessagesController < ApplicationController

  before_action :authenticate_user!, only: [:create]

  def create
    if Entry.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
      @message = Message.new(message_params)
      @message.save
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to room_path(@message.room_id)
  end

  private

  def message_params
    params.require(:message).permit(:user_id,:room_id,:message)
  end
end
