class Movie < ApplicationRecord
  def self.with_ratings(ratings_list)
    where(rating: ratings_list)
  end
end
