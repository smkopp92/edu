class College < ActiveRecord::Base
  has_many :matches
  has_many :profiles, through: :matches
end
