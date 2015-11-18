# https://www.hackerrank.com/challenges/stockmax
def findLastIndexWithMaxVal(arr, max)
  index = arr.length - 1
  while index >= 0
    return index if arr[index] == max
    index -= 1
  end
end

def blindMaximize(arr)
  length = arr.length 
  return 0 if length < 2
  cost = arr.inject(0) { |mem, var| mem + var }
  cost -= arr.last
  profit = ((length-1) * arr.last ) - cost
  return profit
end

def maximizeProfit(arr)
  return 0 if arr.empty?
  max_val = arr.max
  max_indx = findLastIndexWithMaxVal(arr, max_val)
  ascending_array = arr.slice!(0..max_indx)
  return blindMaximize(ascending_array) + maximizeProfit(arr)
end


tests = gets.chomp.to_i 
tests.times do
  n = gets.chomp.to_i
  arr = gets.chomp.split(' ').map{|e| e.to_i}
  answer = maximizeProfit(arr)
  puts answer
end
