# https://www.hackerrank.com/challenges/hackerrank-tweets

n = gets.chomp.to_i

count = 0
n.times do
  input = gets.chomp
  count += 1 if input.match(/hackerrank/i)
end

puts count
