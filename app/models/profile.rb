class Profile < ActiveRecord::Base
	belongs_to :user
	belongs_to :role
  # before_create :build_profile
end
