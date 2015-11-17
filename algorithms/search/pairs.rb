# https://www.hackerrank.com/challenges/pairs
def getPairsV4(arr, diff)
  length = arr.length
  arr.sort!

  pairs = 0
  for i in 0..length-1
    pairs += 1 if arr.include?(arr[i] + diff)
  end

  return pairs
end


def getPairsV3(arr, diff)
  diff_arr = arr.map {|ele| (ele - diff)}
  (arr & diff_arr).count
end

size, diff = gets.chomp.split(' ').map{|e| e.to_i}
arr = gets.chomp.split(' ').map{|e| e.to_i}


answer = getPairsV3(arr, diff)
puts answer
