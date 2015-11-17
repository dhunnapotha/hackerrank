# https://www.hackerrank.com/challenges/almost-sorted
def isAlmostSorted(arr)
  size = arr.length

  return "yes" if size <= 1

  i = 1
  # Getting the first non-ascending integer
  while i < size
    break if arr[i] < arr[i-1]
    i += 1
  end

  return "yes" if i == size #return if no descending pattern is found

  # Try to find the whole descneding range in the array
  start_indx = i-1
  while i < size
    break if arr[i] > arr[i-1]
    i += 1
  end
  end_indx = i - 1

  if !start_indx.zero?
    return "no"  if  arr[end_indx] < arr[start_indx-1]
  end

  if !(end_indx == size-1)
    return "no"  if arr[start_indx] > arr[end_indx+1]
  end
  

  # Check if the rest of the array is sorted or not!
  while i < size
    break if arr[i] < arr[i-1]
    i += 1
  end

  return "no" if i != size

  puts "yes"

  return "swap #{start_indx+1} #{end_indx+1}" if end_indx == start_indx+1
  return "reverse #{start_indx+1} #{end_indx+1}"

end


size = gets.chomp.to_i
arr = gets.chomp.split(' ').map{|e| e.to_i}
answer = isAlmostSorted(arr)
puts answer



