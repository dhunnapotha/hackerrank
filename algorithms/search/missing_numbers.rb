# https://www.hackerrank.com/challenges/missing-numbers
def print_arr(arr)
  arr.each do |ele|
    print "#{ele} "
  end
end

def convertToHash(arr)
  a_hash = Hash.new(0)
  arr.each do |ele|
    a_hash[ele] += 1
  end
  a_hash
end

def missingNumbers(a_arr, b_arr)
  a_hash = convertToHash(a_arr)
  b_hash = convertToHash(b_arr)

  missing_keys = b_hash.keys - a_hash.keys
  common_keys = b_hash.keys & a_hash.keys
  common_keys.each do |key|
    missing_keys << key if b_hash[key] != a_hash[key]
  end
  missing_keys.sort!
  return missing_keys
end

a_sz = gets.chomp.to_i
a_arr = gets.chomp.split(' ').map{|e| e.to_i}
b_sz = gets.chomp.to_i
b_arr = gets.chomp.split(' ').map{|e| e.to_i}
keys = missingNumbers(a_arr, b_arr)
print_arr(keys)
