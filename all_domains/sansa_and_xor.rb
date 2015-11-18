# https://www.hackerrank.com/challenges/sansa-and-xor


def sansaAndXor(arr)
  length = arr.length
  result = 0
  return result if length.even?
  consider = true
  for i in 0..length-1
    result ^= arr[i] if consider
    consider = !consider
  end
  result
end


tests = gets.chomp.to_i

tests.times do
  size = gets.chomp.to_i
  arr = gets.split(' ').map { |e| e.to_i }
  puts sansaAndXor(arr)
end








