require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test
  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room = Room.new(:bedroom, 10, 13)
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
  end

end
