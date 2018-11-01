require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    if self.name.include?(" ")
      self.name.downcase.gsub!(" ", "-")
    else
      self.name.downcase
    end
  end

  def self.find_by_slug(slug)
    self.all.find do |song|
      slug == song.slug
    end
  end
end
