
class House
  attr_accessor :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def area
    sum = 0
    @rooms.each { |room| sum += room.area }
    sum
  end

  def rooms_from_category(category)
    @rooms.find_all { |room| room.category == category }
  end

end
