class WouldYouRather < ActiveRecord::Base
  has_many :user_would_you_rathers
  has_many :users, through: :user_would_you_rathers
end
