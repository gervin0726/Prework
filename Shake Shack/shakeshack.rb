class MilkShake
  attr_reader :total_price_of_milkshake
  def initialize()
    @base_price = 2
    @ingredients = []
  end
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milshake ()
    @total_price_of_milkshake = @base_price
    @ingredients.each do |ingredient|
      @total_price_of_milkshake += ingredient.price
    end
    puts "the total price of this milkshake is: #{@total_price_of_milkshake}"
  end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Shop
  def initialize()
    @milshakes = []
  end
  def add_milkshake (milkshake)
    @milshakes.push(milkshake)
  end
  def price_of_milkshakes ()
    total_price_of_milkshakes = 0
    @milshakes.each do |milkshake|
      total_price_of_milkshakes += milkshake.total_price_of_milkshake
    end
    puts "The total price of all milkshakes is #{total_price_of_milkshakes}"
  end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 1)
chocolate_chips = Ingredient.new("Chocolate Chips", 2)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.price_of_milshake()


mixed_milkshake = MilkShake.new
strawberry = Ingredient.new("strawberry", 3)
apple = Ingredient.new("Apple", 8)
mixed_milkshake.add_ingredient(strawberry)
mixed_milkshake.add_ingredient(apple)
mixed_milkshake.price_of_milshake()

buy = Shop.new
buy.add_milkshake(nizars_milkshake)
buy.add_milkshake(mixed_milkshake)
buy.price_of_milkshakes()
