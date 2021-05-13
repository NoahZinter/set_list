# as a user
# when i visit an Artists's songs index 
# then I see the titles of all the artists songs
# and I see that each title is a ling to the songs show page

require 'rails_helper'

RSpec.describe "Artist songs index" do
  before :each do
    @zepp = Artist.create!(name: 'Led Zeppelin')
    @stair = @zepp.songs.create!(title:'Stairway', length:888, play_count:9865)
    @kashmir = @zepp.songs.create!(title:'Kashmir', length:683, play_count:98645)
  end

  it 'shows all of the titles of songs for artist' do
    visit"/artists/#{@zepp.id}/songs"

    expect(page).to have_content(@stair.title)
    expect(page).to have_content(@kashmir.title)
  end
  
    it 'links to each songs show page' do
      visit"/artists/#{@zepp.id}/songs"

      click_on @stair.title

      expect(current_path).to eq("/songs/#{@stair.id}")
    end

    it 'shows the average song length for artist' do
      visit"/artists/#{@zepp.id}/songs"

      expect(page).to have_content("Average Song Length for Led Zeppelin: 785.5")
    end
end