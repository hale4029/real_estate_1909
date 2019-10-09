
class House
  attr_accessor :price, :address

  def initialize(house_info)
    house_info = house_info.split(",")
    @price = house_info.first
    @address = house_info.last
    @rooms = []
  end


end
