class User < ActiveRecord::Base
  has_many :user_would_you_rathers
  has_many :would_you_rathers, through: :user_would_you_rathers
end
