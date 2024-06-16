class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
    # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    #  movies with those ratings
    # if ratings_list is nil, retrieve ALL movies
    if ratings_list.blank?
      all  # If no ratings are selected, return all movies
    else
      where(rating: ratings_list)  # Filter movies to those with the specified ratings
    end
  end
end
