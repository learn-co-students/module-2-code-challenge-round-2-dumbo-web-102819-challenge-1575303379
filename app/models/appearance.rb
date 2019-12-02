class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :guest_rating, inclusion: 1..5
end
