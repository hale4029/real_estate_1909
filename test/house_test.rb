require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test
  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 12, 13)
    @room_3 = Room.new(:living_room, 12, 13)
  end

  def test_for_instance_of_house
    assert_instance_of House, @house
  end

  def test_for_house_price
    assert_equal "$400000", @house.price
  end

  def test_for_house_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_for_rooms
    assert_equal ([]), @house.rooms

    @house.add_room(@room)
    assert_equal @room, @house.rooms.first
    @house.add_room(@room_2)
    assert_equal @room_2, @house.rooms.last
  end

  def test_for_rooms_in_category
    @house.add_room(@room)
    assert_equal [@room], @house.rooms_from_category(:bedroom)

    @house.add_room(@room_2)
    assert_equal [@room, @room_2], @house.rooms_from_category(:bedroom)
    
    @house.add_room(@room_3)
    assert_equal [@room_3], @house.rooms_from_category(:living_room)
  end

end
