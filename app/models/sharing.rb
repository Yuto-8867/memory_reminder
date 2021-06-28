class Sharing < ApplicationRecord
  belongs_to :user
  attachment :profile_image
  validates :email, uniqueness: true
  self.inheritance_column = :_type_disabled
end
