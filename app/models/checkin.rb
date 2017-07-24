class Checkin < ApplicationRecord
	belongs_to :user, :foreign_key => "user_sid", :primary_key => "sid"
	belongs_to :buddy, :class_name => "User", :foreign_key => "buddy_sid", :primary_key => "sid"

	after_create :create_mirror!
  after_destroy :destroy_mirror!

  validates :week, presence: true
  validate :validation

  def mirror_record
    Checkin.where(:week => week, :user_sid => buddy_sid, :buddy_sid => user_sid).first
  end

  private

  def create_mirror!
    Checkin.create(:week => week, :user_sid => buddy_sid, :buddy_sid => user_sid, :comment => comment, :is_mirror => true) if not mirror_record
  end

  def destroy_mirror!
    mirror_record.destroy if mirror_record
  end

  def validation
    if user_sid == buddy_sid and !user_sid.nil?
      errors.add(:checkin, 'you cannot sign in with yourself!...')
    end
    if not user.is_ta? and not buddy.is_ta? and not Checkin.where(user_sid: user_sid, buddy_sid: buddy_sid, is_mirror: false).empty?
      errors.add(:checkin, 'you two have already signed in together before.')
    end
  end
end


