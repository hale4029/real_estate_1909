
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

  def price_per_square_foot
    (@price.delete("$").to_f / area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by { |room| room.area }
  end

  def rooms_by_category
    hash = {}
    hash = Hash[@rooms.map { |room| [room.category, [room]] }]
  end


end
