# https://www.hackerrank.com/challenges/palindrome-index
tests = gets.chomp.to_i 

def getIndex(str)
  length = str.length
  left = 0
  right = length-1
  while true
    return -1 if left >= right
    if str[left] == str[right]
      left += 1
      right -= 1
    else
      return left if str[left+1] == str[right]
      return right 
    end
  end
end


tests.times do
  str = gets.chomp
  answer = getIndex(str)
  puts answer
end