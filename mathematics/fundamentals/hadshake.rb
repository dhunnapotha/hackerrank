# https://www.hackerrank.com/challenges/handshake

tests = gets.chomp.to_i

tests.times do
  input = gets.chomp.to_i
  output = (input * (input - 1))/2
  puts output
end
