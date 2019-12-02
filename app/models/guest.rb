class Guest < ApplicationRecord
	has_many :episode_guest
	has_many :episode, :through => :episode_guest
end
