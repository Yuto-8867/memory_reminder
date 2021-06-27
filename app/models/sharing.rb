class Sharing < ApplicationRecord

  belongs_to :user
  attachment :profile_image
  self.inheritance_column = :_type_disabled
end
