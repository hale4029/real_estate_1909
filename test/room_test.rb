

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_for_instance_of_bedroom
    assert_instance_of Room, @room
  end

  def test_for_category
    assert_equal :bedroom, @room.category
  end

  def test_for_length
    assert_equal 10, @room.length
  end

  def test_for_width
    assert_equal 13, @room.width
  end

  def test_for_area
    assert_equal 130, @room.area
  end

end