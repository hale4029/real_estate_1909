require './lib/room'
require './lib/house'
require 'pry'

house = House.new("$400000", "123 sugar lane")
room = Room.new(:bedroom, 10, 13)
room_2 = Room.new(:bedroom, 12, 13)
room_3 = Room.new(:living_room, 12, 13)

house.add_room(room)
house.rooms_from_category(:bedroom)

house.add_room(room_2)
house.rooms_from_category(:bedroom)

house.add_room(room_3)
house.rooms_from_category(:living_room)
