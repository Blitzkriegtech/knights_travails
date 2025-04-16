# frozen_string_literal: true

#-----------------------------
# Knight's Travails
#-----------------------------

require 'set'

def knight_moves(from, to)
  moves = [
    [2, 1], [1, 2], [-1, 2], [-2, 1],
    [-2, -1], [-1, -2], [1, -2], [2, -1]
  ]

  queue = [[from]]
  path_traversed = Set.new([from])

  is_valid = ->(pos) { pos.all? { |coord| coord.between?(0, 7) } }

  until queue.empty?
    path = queue.shift
    current_path = path.last

    if current_path == to
      moves_count = path.size - 1
      puts "You made it in #{moves_count} move#{'s' if moves_count != 1}! Here's your path:"
      path.each { |pos| p pos }
      return path
    end
    moves.each do |dx, dy|
      next_pos = [current_path[0] + dx, current_path[1] + dy]
      next unless is_valid.call(next_pos) && !path_traversed.include?(next_pos)

      path_traversed.add(next_pos)
      queue << (path + [next_pos])
    end
  end
  puts 'No valid path found'
  nil
end

puts 'Example 1: From [0,0] to [1,2]'
knight_moves([0, 0], [1, 2])
puts "\nExample 2: From [0,0] to [3,3]"
knight_moves([0, 0], [3, 3])
puts "\nExample 3: From [3,3] to [0,0]"
knight_moves([3, 3], [0, 0])
puts "\nExample 4: From [0,0] to [7, 7]"
knight_moves([0, 0], [7, 7])
puts "\nExample 4: From [0,0] to [8, 8]"
knight_moves([0, 0], [8, 8])
