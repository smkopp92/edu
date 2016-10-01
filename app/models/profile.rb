class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  has_many :colleges, through: :matches
end
