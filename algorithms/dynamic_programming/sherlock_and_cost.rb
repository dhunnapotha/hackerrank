# https://www.hackerrank.com/challenges/sherlock-and-cost/
def computeCost(arr, size)
  max_costs = []
  # Store possible max when the chosen int is 1 in 0th index, 
  # Store possible max when the chosen int is the arr[indx] in the 1th index
  max_costs << [0, 0]
  for i in 1..size-1
    last_max_sum = max_costs[i-1]
    current_max_sum = []
    current_max_sum <<  [last_max_sum[0], last_max_sum[1] + (arr[i-1] - 1).abs].max
    current_max_sum <<  [last_max_sum[0] + (1 - arr[i]).abs, last_max_sum[1] + (arr[i-1] - arr[i]).abs].max
    max_costs[i] = current_max_sum
  end
  max_costs.last.max
end


tests = gets.chomp.to_i

tests.times do
  size = gets.chomp.to_i
  arr = gets.chomp.split(' ').map{|e| e.to_i}
  answer = computeCost(arr, size)
  puts answer 
end