class Song < ActiveRecord::Base
  belongs_to :artist

  def initialize(name, artist)
    @name = name
    @artist = name
  end
end
