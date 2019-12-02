class Episode < ApplicationRecord
	has_many :episode_guest
	has_many :guest, :through => :episode_guest
end
