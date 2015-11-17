# https://www.hackerrank.com/challenges/service-lane
length, tests = gets.chomp.split(' ').map{|e| e.to_i}
widths = gets.chomp.split(' ').map{|e| e.to_i}

def findBiggestPossibleVehicle(arr, range)
  max = 3
  for i in range[0]..range[1]
    max = arr[i] if arr[i] < max 
    break if max == 1
  end
  max
end


tests.times do
  indices = gets.chomp.split(' ').map{|e| e.to_i}
  vehicle = findBiggestPossibleVehicle(widths, indices)
  puts vehicle 
end
