require 'pry'
class Movie < ActiveRecord::Base

 def self.create_with_title(title)
    new_movie = Movie.new(title: title)
    new_movie.save
    new_movie
 end

 def self.first_movie
    Movie.first
 end

 def self.last_movie
    Movie.last
 end

 def self.movie_count
    Movie.count
 end

 def self.find_movie_with_id(id)
    Movie.find(id)
 end

 def find_movie_with_attributes(attributes)
    Movie.find(attributes)
 end

 def self.find_movie_after_2002
    movie.where(release_date > 2002)
 end

 def update_with_attribute(attributes)
    self.update(attributes)
 end

 def self.update_all_titles(title)
    Movie.update(title: title)
  end
  def self.delete_by_id(id)
    movie = Movie.find(id)
    movie.destroy
  end

  def self.delete_all_movies
    Movie.destroy_all
  end
end