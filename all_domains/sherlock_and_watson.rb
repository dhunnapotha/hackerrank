# https://www.hackerrank.com/challenges/sherlock-and-watson
size, rotations, tests = gets.chomp.split(' ').map { |e| e.to_i }
arr = gets.chomp.split(' ').map { |e| e.to_i }
rotations %= size

tests.times do
  pos = gets.chomp.to_i
  pos -= rotations
  puts arr[pos]
end

