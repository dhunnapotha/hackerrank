#https://www.hackerrank.com/challenges/pangrams
def isPangram(str)
  chars_array = str.downcase.chars.to_a
  chars_array.uniq!
  chars_array.reject!{|x| x==' '}
  return "pangram" if chars_array.count == 26
  return "not pangram"
end


input = gets.chomp 
answer = isPangram(input)
puts answer

