module SongsHelper
    def display_artist(song)
        (song.artist && !song.artist.name.empty?) ? (link_to song.artist.name, artist_path(song.artist)) : (link_to "Add Artist", edit_song_path(song))
    end 
end
