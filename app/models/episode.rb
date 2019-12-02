class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def nice_date
        self.date.strftime("%B %d, %Y")
    end
end
