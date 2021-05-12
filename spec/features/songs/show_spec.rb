require 'rails_helper'

RSpec.describe 'the songs show page' do
#   as a visitor 
# when I visit /songs/1 
# then I see that songs title and artist
# and only the info for that song
  it 'displays the song title' do
    artist = Artist.create!(name: "Pile")
    song = artist.songs.create!(title:"Dogs", length:200, play_count:150)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)

  end

  it 'displays the artist for the song' do
    artist = Artist.create!(name: "Pile")
    song = artist.songs.create!(title:"Dogs", length:200, play_count:150)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end