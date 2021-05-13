# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    @zepp = Artist.create!(name: 'Led Zeppelin')
    @stair = @zepp.songs.create!(title:'Stairway', length:888, play_count:9865)
    @kashmir = @zepp.songs.create!(title:'Kashmir', length:683, play_count:98645)