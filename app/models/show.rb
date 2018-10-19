class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    Show.all.find do |s|
      s.rating == highest_rating
    end
  end

  def self.lowest_rating
    Show.minimum('rating')
  end

  def self.least_popular_show
    Show.all.find do |s|
      s.rating == lowest_rating
    end
  end

  def self.ratings_sum
    Show.sum('rating')
  end

  def self.popular_shows
    Show.all.select do |s|
      s.rating > 5
    end
  end

  def self.shows_by_alphabetical_order
    Show.all.sort_by do |s|
      s.name
    end
  end


end
