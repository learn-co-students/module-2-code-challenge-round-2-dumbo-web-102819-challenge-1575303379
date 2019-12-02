class Episode < ApplicationRecord
    has_many :ratings
    has_many :guests, through: :ratings
    
    def total_rating
        self.ratings.map(&:rating).inject(0) {|s,m| s +m}
    end

    def count_rating
        self.ratings.map(&:rating).count
    end

    def average_rating
        if(count_rating == 0)
            return 0
        else
            total_rating / count_rating
        end
    end
end
