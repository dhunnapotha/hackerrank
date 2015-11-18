# https://www.hackerrank.com/challenges/bus-station
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
end

def isPossible?(arr, key)
  rem = key
  arr.each do |ele|
    rem -= ele 
    return false if rem < 0
    rem = key if rem == 0
  end
end

def binSearchInclude?(ar, indx_start, indx_end, key)
  return false if indx_start > indx_end

  mid = (indx_start + indx_end)/2
  
  return true if ar[mid] == key
  
  if ar[mid] > key
    binSearchInclude?(ar, indx_start, mid-1, key) 
  else
    binSearchInclude?(ar, mid+1, indx_end, key)
  end
end


size = gets.chomp.to_i
groups = gets.chomp.split(' ').map{|e| e.to_i}

sum = 0
running_sum = groups.map do |group|
  sum += group
end

min_possible = groups.min
max_possible = running_sum.last

possible_x = []
# for i in min_possible..max_possible/2
#   next if ((max_possible % i) != 0)
#   for j in 1..max_possible/i
#     sum = j * i
#     break unless isPossible?(groups, sum) 
#     possible_x << i if sum == max_possible
#   end
# end

running_sum.reject!{|ele| !(max_possible % ele).zero?}

running_sum.each do |ele|
  possible_x << ele if isPossible?(groups, ele)
end

print_array(possible_x)


