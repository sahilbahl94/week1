class Room
	attr_reader :name
	attr_reader :description
	attr_reader :exitN
	attr_reader :exitS
	attr_reader :exitE
	attr_reader :exitW

    def initialize(name, description, exitN, exitS, exitE, exitW, newgame)
        @name = name
        @description = description
        @exitN = exitN
        @exitS = exitS
        @exitW = exitW
        @exitE = exitE
        @newgame = newgame 
    end

    def show
        puts "You are in the #{@name}. #{@description}"
    end

    def start
    	@newgame.stage1(@name, @description, @exitN, @exitS, @exitE, @exitW, @newgame)
    end
end


class GameIntelligence
    def initialize
        @rooms = []
        @position = 0
    end
   
    def add_room(room)
        @rooms.push(room)
    end

    def prompt
    	puts "<"
    end


	def stage1(name, description, exitN, exitS, exitE, exitW, newgame)
		puts "You are in the #{@rooms[@position].name}. Where would you like to go?"
		prompt
		reply = gets.chomp
		if reply == "N" && exitN == true
			@position += 1
			puts "You have entered the #{@rooms[@position].name}"
			@rooms[@position].start
		elsif 
			reply == "S" && exitS == true
			@position += 1
			puts "You have entered the #{@rooms[@position].name}"
			@rooms[@position].start
		elsif 
			reply == "W" && exitW == true
			@position += 1
			puts "You have entered the #{@rooms[@position].name}"
			@rooms[@position].start
		elsif 
			reply == "E" && exitE == true
			@position += 1
			puts "You have entered the #{@rooms[@position].name}"
			@rooms[@position].start
		else 
			puts "Try Again!"

		end
		
	end
end
newgame = GameIntelligence.new

living_room = Room.new("Living Room", "There is an exit to the North", true, false, false, false, newgame)
kitchen = Room.new("Kitchen", "There is an exit to the South and East", false, true, true, false, newgame)
dining_room = Room.new("Dining Room", "There is an exit to the West and North", true, false, false, true, newgame)


newgame.add_room(living_room)
newgame.add_room(kitchen)
newgame.add_room(dining_room)

newarray = [living_room, kitchen, dining_room]
newarray[0].start

