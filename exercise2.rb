class Rover
attr_accessor :name, :x_coord, :y_coord, :direction
	def initialize(name, x_coord, y_coord, direction)
		@name = name
		@x_coord = x_coord
		@y_coord = y_coord
		@direction = direction
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

	def print_coord
		puts "#{@x_coord} and #{@y_coord}"
	end

end

def read_instruction(rover, input)
	if input == "L" || input == "R"
		rover.turn(input)
	elsif input == "M"
		rover.move
	else
		puts "That isn't an option, bruhh"
	end
end


puts "How big should the plateau be?"
plateau = gets.to_i

rover1 = Rover.new("Ralph", 1, 2, "N")
rover2 = Rover.new("Jqebvo", 3, 3, "E")

puts "Rover 1's start position is (#{rover1.x_coord}, #{rover1.y_coord}), facing #{rover1.direction}"
puts "Rover 2's start position is (#{rover2.x_coord}, #{rover2.y_coord}), facing #{rover2.direction}"
puts "Input commands for Rover One"
rover1_commands = gets.chomp.upcase
rover1_commands.each_char do |command|
	read_instruction(rover1, command)
end

puts "Input commands for Rover Two"
rover2_commands = gets.chomp.upcase
rover2_commands.each_char do |command|
	read_instruction(rover2, command)
end
rover1.print_coord
rover2.print_coord
