class ShoppingCart
	def initialize
		@items = []
	end

	def add_to_cart(item)
		item < @items
	end

	def show

	end

	def cost

	end
end

class Fruits
	def initialize(name,price)
		@name = name
		@price = price
		@fruits_list = {}
	end

	def add_fruits(fruit)
		fruit.each do |@name, @price|
			@fruits_list[@name] = @price 
	end
end

my_cart = ShoppingCart.new
banana = Fruits.new("Banana", 20) 
apple = Fruits.new("Apple", 10) 
grapes = Fruits.new("Grapes", 15) 
watermelon = Fruits.new("Watermelon", 50) 
orange = Fruits.new("Orange", 5)

banana.add_fruits
apple.add_fruits
grapes.add_fruits
orange.add_fruits
watermelon.add_fruits




