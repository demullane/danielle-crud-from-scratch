class StatusUpdate < ActiveRecord::Base

  validates :status, :user, presence: true

end
