class UserWouldYouRather < ActiveRecord::Base
  belongs_to :user
  belongs_to :would_you_rather
end
