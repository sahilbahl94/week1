class Car 

	def initialize(sound)
		@sound = sound
	end

	def make_noise
		puts @sound
	end
end



=begin
	
cars = sounds.map do |sound|
	Car.new(sound)
end

cars.each do |car|
	car.make_noise
end

=end

#Exercise 3

sounds = ["Broom", "Meek", "Nyan"]

cars = sounds.each_with_object({}) do |sound,memo|
	memo[sound.to_sym] = Car.new(sound)
end

#EX 4
newcars = [Car.new("Broom"), Car.new("Meek"), Car.new("Nyan")]

string = newcars.reduce("") do |memo, car|
	memo += car.sound
end



baboon




