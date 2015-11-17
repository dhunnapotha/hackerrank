# https://www.hackerrank.com/challenges/extra-long-factorials
n = gets.chomp.to_i

fact = 1
for i in 1..n
  fact *= i
end

puts fact
