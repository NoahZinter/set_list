class ArtistSongsController < ApplicationController
  def index
    @artist  = Artist.find(params[:artist_id])
    @artist_songs = @artist.songs.all
  end
end