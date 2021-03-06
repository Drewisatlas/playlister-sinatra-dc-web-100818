class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    if self.name.include?(" ")
      self.name.downcase.gsub!(" ", "-")
    else
      self.name.downcase
    end
  end

  def self.find_by_slug(slug)
    self.all.find do |genre|
      slug == genre.slug
    end
  end
end
