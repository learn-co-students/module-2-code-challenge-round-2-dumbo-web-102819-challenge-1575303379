class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, inclusion: {in: (1..5), message: "Rating must be from 1-5"}
  validates :guest_id, uniqueness: {scope: :episode_id, message: "Should only appear once per episode"}
end
