# https://www.hackerrank.com/challenges/anagram
def noOfCommonElements(arr1, arr2)
  h1 = Hash.new(0)
  h2 = Hash.new(0)

  arr1.each {|val| h1[val] += 1}
  arr2.each {|val| h2[val] += 1}

  uniq_chars = h1.keys & h2.keys
  count = 0
  uniq_chars.each do |key|
    count += [h1[key], h2[key]].min
  end
  count
end

def getRequiredMinNoOfChanges(str)
  length = str.length
  return -1 if length.odd? 
  first_half  = str[0..(length/2)-1].chars.to_a
  second_half = str[(length/2)..length-1].chars.to_a

  # TODO: This is not taking care of duplicate entries
  common = noOfCommonElements(first_half, second_half)
  return length/2 - common
end



tests = gets.chomp.to_i

tests.times do
  str = gets.chomp
  required_steps = getRequiredMinNoOfChanges(str)
  puts required_steps
end
