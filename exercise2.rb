class Rover
attr_accessor :name, :x_coord, :y_coord, :direction
	def initialize(name, x_coord, y_coord, direction)
		@name = name
		@x_coord = x_coord
		@y_coord = y_coord
		@direction = direction
	end

end

	def read_instruction(input)
		if input == "L" || input == "R"
			turn(input)
		elsif input == "M"
			move
		else
			puts "That isn't an option, bruhh"
		end
	end

	def turn(new_direction)
		if new_direction == "L" && @direction == "N"
			@direction = "W"
		elsif new_direction == "R" && @direction == "N"
			@direction = "E"
		elsif new_direction = "L" && @direction == "E"
			@direction = "N"
		elsif new_direction == "R" && @direction == "E"
			@direction = "S"
		elsif new_direction == "L" && @direction == "S"
			@direction = "E"
		elsif new_direction = "R" && @direction == "S"
			@direction = "W"
		elsif new_direction == "R" && @direction == "W"
			@direction = "N"
		elsif new_direction == "L" && @direction == "W"
			@direciton = "S"		
		else 
			puts "That isn't an option, bruhh"
		end
	end

	def move
		if @direction == "N"
			@y_coord+=1
		elsif @direction == "E"
			@x_coord+=1
		elsif @direction == "S"
			@y_coord-=1
		elsif @x_coord == "W"
			@x_coord-=1
		else
			puts "That isn't an option, bruhh"
		end
	end

	puts "How big should the plateau be?"
		plateau = gets.chomp
		





rover1 = Rover.new("Ralph", 1, 2, "N")
rover2 = Rover.new("Jqebvo", 3, 3, "E")