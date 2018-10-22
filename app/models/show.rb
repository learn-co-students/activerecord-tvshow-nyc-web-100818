class Show < ActiveRecord::Base

  def self.highest_rating
    # self bc it's the job of the CLASS to find the instance w highest rating
    Show.maximum("rating") # this method should return the highest value in the ratings column
  end

  def self.most_popular_show #  hint: use the highest_rating method as a helper method.
    highest_rating = self.highest_rating # using previous method
    Show.find_by(rating: highest_rating)
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    lowest_rating = self.lowest_rating
    Show.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    Show.where("rating > ?",5)
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end # end of Show class
