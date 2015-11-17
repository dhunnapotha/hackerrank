# https://www.hackerrank.com/challenges/sherlock-and-pairs
tests = gets.chomp.to_i

def possiblePairs(ar)
  hash = Hash.new(0)
  ar.each do |ele|
    hash[ele] += 1
  end

  hash.reject! do |key, val|
    val == 1
  end

  total = 0
  hash.values.each do |val|
    total += (val * (val-1))
  end
  return total
end

tests.times do
  size = gets.chomp.to_i
  ar = gets.chomp.split(' ').map{|e| e.to_i}
  answer = possiblePairs(ar)
  puts answer
end
