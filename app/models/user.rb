class User < ApplicationRecord
  has_many :checkins, :foreign_key => "user_sid"
  has_many :buddies, :through => "checkins", :class_name => "User"

  def is_ta?
    false
  end
end
