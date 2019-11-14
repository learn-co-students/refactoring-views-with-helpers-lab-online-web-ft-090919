class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist ? artist.name : nil
  end

  def artist_name=(name)
    new_artist = Artist.find_or_create_by(name: name)
    self.artist = new_artist
  end
  
end
