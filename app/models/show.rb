# define a Show class that inherits from ActiveRecord::Base
class Show < ActiveRecord::Base

  # return the highest value in the ratings column. hint: if there is a minimum Active Record method, might there be a maximum method
  def self.highest_rating
    self.maximum(:rating)
  end

  #return the show with the highest rating. hint: use the highest_rating method as a helper method.
  def self.most_popular_show
    self.find_by(rating: highest_rating)
  end

  #returns the lowest value in the ratings column.
  def self.lowest_rating
    self.minimum(:rating)
  end

 #returns the show with the lowest rating.
  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end


  # returns an array of all of the shows that have a rating greater than 5. hint: use the where

  def self.popular_shows
    self.where("rating > 5")
  end

  # returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
  def self.shows_by_alphabetical_order
    self.order(:name)
  end
  


end