module ApplicationHelper

  def sharing
    sharing = Sharing.find_by(user_id: current_user.id)
  end

end
