class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :user_would_you_rathers
  has_many :would_you_rathers, through: :user_would_you_rathers

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }
  validates :name, presence: true

  validates :email, uniqueness: true
end
