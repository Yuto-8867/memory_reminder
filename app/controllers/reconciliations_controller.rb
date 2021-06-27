class ReconciliationsController < ApplicationController

  def page1
    @random = current_user.posts.sample
    @sharing = Sharing.find_by(user_id: current_user)
  end

  def page2

  end

  def page3
    @random = current_user.posts.sample
  end

  def page4
    @random = current_user.posts.sample
  end

  def page5
    @random = current_user.posts.sample
  end

  def page6
    @sharing = Sharing.find_by(user_id: current_user)
  end

  def page7
    @sharing = Sharing.find_by(user_id: current_user)
  end

  def page8
    @sharing = Sharing.find_by(user_id: current_user)
  end

  def page9
    @random = current_user.posts.sample
  end

  def page10
    @random = current_user.posts.sample
  end

  def page11
    @random = current_user.posts.sample
  end

  def page12

  end

  def page13

  end

  def page14

  end
end
