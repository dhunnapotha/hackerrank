# https://www.hackerrank.com/challenges/taum-and-bday
tests = gets.to_i


tests.times do
  b, w = gets.chomp.split(' ').map(&:to_i)
  bc, wc, cc = gets.chomp.split(' ').map(&:to_i)
  cost = b * [bc, wc + cc].min + w * [wc, bc + cc].min
  puts cost
end
