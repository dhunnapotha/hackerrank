# https://www.hackerrank.com/challenges/a-very-big-sum/submissions/code/12138391

length = gets.chomp.to_i
arr = gets.chomp.split(' ').map { |e| e.to_i }
answer = arr.inject(0) { |mem, var| mem + var }
puts answer
