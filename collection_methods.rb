require "pry"
class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name	
		@city = city
		@capactiy = capacity
		@price = price
	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
  	Home.new("Josh's place", "Pittsburgh", 3, 41),
  	Home.new("Gonzalo's place", "Málaga", 2, 45),
  	Home.new("Ariel's place", "San Juan", 4, 49)
]

=begin
#theory (option 1)
for pos in 0..100
	puts homes[pos].name
end

#option 2 (with blocks)
homes.each {|hm|
	puts hm.name
end
}
=end

homes.each { |hm| 
	puts "#{hm.name} in San Juan"
	puts " Price: $#{hm.price} a night"
}

#theory 2 - transforming array with a map
# theory 3 - each block represents a method with 'each'
# and 'do' inclusive. Block is { |item| function}

cities = homes.map { |hm| hm.city}
puts cities 
prices = homes.map { |hm| hm.price}

total_price = homes.reduce(0.0) { |sum, hm| sum + hm.price}
avg_price = (total_price/prices.length)

homes.each_with_index {|hm, index|
  puts "Home Number #{index + 1} #{hm.name}"
}

home_41_dollars = homes.find { |hm| hm.price == 41}

puts "The first home that costs $41 is:"
puts home_41_dollars.name

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their name
  home1.name <=> home2.name
end

puts sorted
