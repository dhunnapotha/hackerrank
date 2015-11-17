# https://www.hackerrank.com/challenges/bigger-is-greater
def findFirstNonAscIndex(arr)
  indx = arr.length-1
  last_rd = 'a'
  while (indx >= 0)
    break if arr[indx] < last_rd
    last_rd = arr[indx] 
    indx -= 1
  end
  return indx
end

def findIndexGreaterThanKey(arr, key)
  indx = arr.length - 1
  while (indx >= 0)
    break if arr[indx] > key
    indx -= 1
  end
  return indx
end

def swap(arr, index1, index2)
  temp = arr[index1]
  arr[index1] = arr[index2]
  arr[index2] = temp
  return arr
end

def sort_array_from_index(arr, index)
  length = arr.length
  sort_arr = arr.slice!(index..length-1)
  return arr if sort_arr.nil?
  sort_arr.sort!
  arr + sort_arr 
end

def getNextBig(str)
  arr = str.chars.to_a
  non_asc_indx = findFirstNonAscIndex(arr)
  return "no answer" if non_asc_indx == -1
  to_be_swapped = findIndexGreaterThanKey(arr, arr[non_asc_indx])
  arr = swap(arr, non_asc_indx, to_be_swapped)
  arr = sort_array_from_index(arr, non_asc_indx+1)
  return arr.join
end

tests = gets.chomp.to_i

tests.times do
  str = gets.chomp
  answer = getNextBig(str)
  puts answer
end
