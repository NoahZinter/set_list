require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe "#average_song_length" do
      before :each do
        @zepp = Artist.create!(name: 'Led Zeppelin')
        @stair = @zepp.songs.create!(title:'Stairway', length:888, play_count:9865)
        @kashmir = @zepp.songs.create!(title:'Kashmir', length:683, play_count:98645)
      end

      it 'returns the average song length' do
        expect(@zepp.average_song_length).to eq(785.5)
      end
    end
  end
end