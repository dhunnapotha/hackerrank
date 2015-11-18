# https://www.hackerrank.com/challenges/funny-string
def isPalindrome arr
  left = 0 
  right = arr.length - 1

  while left < right
    return false if arr[left] != arr[right]
    left  += 1
    right -= 1 
  end
  true
end


def isFunny(str)
  len = str.length
  diffs = []
  for i in 1..len-1
    diffs << (str[i].ord - str[i-1].ord).abs
  end

  val = isPalindrome(diffs) ? "Funny" : "Not Funny"
  val
end



testcases = gets.chomp.to_i

testcases.times do
  str = gets.chomp
  puts isFunny(str)
end
