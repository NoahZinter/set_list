require 'rails_helper'

# as a user 
# when I visit '/songs'
# I see each song's title and play count

RSpec.describe 'songs index page', type: :feature do
  it 'can see song titles and play count' do
    song_1 = Song.create!(title: 'Hey Hey My My',
                          length: 207,
                          play_count: 1000000)
    song_2 = Song.create!(title: 'Song 2',
                          length: 187,
                          play_count: 206789)
    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
