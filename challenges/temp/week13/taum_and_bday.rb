tests = gets.chomp.to_i

tests.times do
  black, white = gets.chomp.split(' ').map{|e| e.to_i}
  black_cost, white_cost, exchange = gets.chomp.split(' ').map{|e| e.to_i}
  black_cost = [black_cost, white_cost+exchange].min
  white_cost = [white_cost, black_cost + exchange].min
  total_cost = black * black_cost + white * white_cost
  puts total_cost
end
