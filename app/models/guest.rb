class Guest < ApplicationRecord
    has_many :ratings
    has_many :episodes, through: :ratings
end
