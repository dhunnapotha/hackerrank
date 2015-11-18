# https://www.hackerrank.com/challenges/find-median
size = gets.chomp.to_i
arr = gets.chomp.split(' ').map{|e| e.to_i}
arr.sort!
puts arr[size/2]

# def median(arr, left)
#   left_arr = []
#   right_arr = []
#   pivot = arr.first

#   arr.each do |ele|
#     left_arr << ele if ele < pivot
#     right_arr << ele if ele > pivot
#   end

#   return pivot if left_arr.size == left

#   if left_arr.size > left 
#     return median(left_arr, left)
#   else
#     return median(right_arr, left - (left_arr.size) - 1)
#   end
# end

# answer = median(arr, size/2)
# puts answer
