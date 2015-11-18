# https://www.hackerrank.com/challenges/sherlock-and-minimax/submissions

def getMinWithDiff(arr, size,  k, start_indx)
  last_diff = arr.last + 1
  indx = start_indx
  while (indx <= size-1)
    current_diff = (arr[indx] - k).abs
    break if current_diff > last_diff
    last_diff = current_diff
    indx += 1
  end

  indx -= 1
  return last_diff, indx
end

def getMaxOfMinInOverlap(arr, range)
  max_diff = -1
  size = arr.size
  start_indx = 0
  max_num = range.first
  range.each do |r|
    current_diff, indx = getMinWithDiff(arr, size, r, start_indx)
    start_indx = indx
    if current_diff > max_diff
      max_diff = current_diff 
      max_num = r
    end
  end

  return max_num, max_diff
end


def keyWithMaxValue(hash)
  max_value = hash.values.max
  hash.each_pair { |key, val| return key if val == max_value }
end

def miniMax(arr, size, r_min, r_max)
  arr.sort!
  max_min = Hash.new(0)
  min_ele = arr.first
  max_ele = arr.last

  left_range = nil 
  right_range = nil
  overlap_range = nil

  left_range = (r_min..[r_max,min_ele].min) if r_min < min_ele
  right_range = ([max_ele, r_min].max..r_max) if r_max > max_ele
  overlap_range = ([min_ele, r_min].max..[max_ele,r_max].min) if r_max > min_ele && r_min < max_ele 

  max_min[r_min] = min_ele - r_min if left_range
  max_min[r_max] = r_max - max_ele if right_range
  num, max_diff = getMaxOfMinInOverlap(arr, overlap_range) if overlap_range
  max_min[num] = max_diff

  return keyWithMaxValue(max_min)
end

size = gets.chomp.to_i
arr = gets.chomp.split(' ').map{|e| e.to_i}
r_min, r_max = gets.chomp.split(' ').map{|e| e.to_i}

answer = miniMax(arr, size, r_min, r_max)
puts answer 
