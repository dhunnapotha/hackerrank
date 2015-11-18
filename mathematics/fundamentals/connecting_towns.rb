# https://www.hackerrank.com/challenges/connecting-towns
tests = gets.chomp.to_i
tests.times do
  size = gets.chomp.to_i
  arr = gets.chomp.split(' ').map{|e| e.to_i}
  output = arr.inject(1) { |mem, var| mem * var }
  output = output % 1234567
  puts output
end
