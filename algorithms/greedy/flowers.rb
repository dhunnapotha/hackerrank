# https://www.hackerrank.com/challenges/flowers
def getSum(arr)
  sum = 0
  arr.inject(sum) { |mem, var| mem + var }
end

def getMinCost(costs, friends)
  costs.sort!{|a, b| b <=> a}
  total_cost = 0
  end_index = -1
  iteration = 1

  while true
    start = end_index+1
    end_index = start + friends - 1
    arr = costs[start..end_index]
    break if arr.nil? 
    total_cost += iteration * getSum(arr) 
    iteration += 1
  end
  total_cost
end

flowers, friends = gets.chomp.split(' ').map{|e| e.to_i}
costs = gets.chomp.split(' ').map{|e| e.to_i}
answer = getMinCost(costs, friends)
puts answer

