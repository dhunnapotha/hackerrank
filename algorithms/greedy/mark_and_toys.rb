# https://www.hackerrank.com/challenges/mark-and-toys
toys, balance = gets.split(' ').map { |e| e.to_i }
prices = gets.split(' ').map { |e| e.to_i }
prices.sort!

can_buy = 0
running_cost = 0
for i in 0..prices.length-1
  running_cost += prices[i]
  break if running_cost > balance
  can_buy += 1
end

puts can_buy
