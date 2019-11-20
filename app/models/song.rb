class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def artist_name=(artist_name)
    if Artist.find_by_name(artist_name)
      self.artist = Artist.find_by_name(artist_name)
    else
      self.build_artist(name: artist_name).save
    end
  end
end
