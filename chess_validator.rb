require 'pry'

class Board
	def initialize
		@board = []
	end

	def map
		@board = [
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil],
					[nil, nil, nil, nil, nil, nil, nil, nil]
				]
	end

	# def check
	#  	@board.each do |line|
	#  		line.each do |space|
	#  			if space = piece
	#  				puts piece.position
	#  			end
	#  		end
	# 	end
	# end

	def add_piece(piece)
		@board[piece.position[0]][piece.position[1]] = piece.name
	end
end

class Piece
	attr_accessor :name, :position
	def initialize(name, position)
		@name = name
		@position = position
	end
end

class Rook < Piece
	def initialize(name, position)
		super
	end

	def position_condition(new_position)
		@position[0] == new_position[0] || @position[1] == new_position[1]
	end

	def change_position(new_position)
		if position_condition(new_position)
			puts "Valid"
		else
			puts "Invalid"
		end
	end
end

class Pawn < Piece
	def initialize(name, position)
		super
	end

	def position_condition(new_position)
		@position[0] < new_position[0] && @position[1] == new_position[1] && (new_position[0].to_i - @position[0].to_i) <= 2
	end
 	
 	def change_position(new_position)
		if position_condition(new_position)
			puts "Valid"
		else
			puts "Invalid"
		end
	end
end

class Bishop < Piece
	def initialize(name, position)
		super
	end

	def position_condition(new_position)
		(new_position[0].to_i - @position[0].to_i).abs == (new_position[1].to_i - @position[1].to_i).abs
	end
 	
 	def change_position(new_position)
		if position_condition(new_position)
			puts "Valid"
		else
			puts "Invalid"
		end
	end
end

class Knight < Piece
	def initialize(name, position)
		super
	end

	def position_condition(new_position)
		((new_position[0].to_i - @position[0].to_i).abs == 2 && (new_position[1].to_i - @position[1].to_i).abs == 1) || ((new_position[1].to_i - @position[1].to_i).abs == 2 && (new_position[0].to_i - @position[0].to_i).abs == 1)
	end
 	
 	def change_position(new_position)
		if position_condition(new_position)
			puts "Valid"
		else
			puts "Invalid"
		end
	end
end

class Queen < Piece
	def initialize(name, position)
		super
	end

	def position_condition(new_position)
		((new_position[0].to_i - @position[0].to_i).abs == (new_position[1].to_i - @position[1].to_i).abs)) || (@position[0] == new_position[0] || @position[1] == new_position[1])
	end
 	
 	def change_position(new_position)
		if position_condition(new_position)
			puts "Valid"
		else
			puts "Invalid"
		end
	end
end

board = Board.new
board.map

rook = Rook.new(:bR, [0,0])
rook.change_position([0,5])
pawn = Pawn.new(:bP, [7,0])
pawn.change_position([8,0])

board.add_piece(rook)
board.add_piece(pawn)


bishop = Bishop.new(:bB, [2,0])
bishop.change_position([0,2])

knight = Knight.new(:bK, [0,1])
knight.change_position([2,0])

queen = Queen.new(:bQ, [0,3])
queen.change_position([2,7])

#board.check

class FileRead 
	def initialize(filename)
		@filename = filename
	end

	def read_file
		lines = IO.read(@filename)
		a = lines.split("\n")
		a.each do |letters|
		b = letters.split(" ")
		end	
	end
end

file1 = FileRead.new("move_list.txt")
file1.read_file


