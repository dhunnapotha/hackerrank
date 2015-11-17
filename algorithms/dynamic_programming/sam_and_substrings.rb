# https://www.hackerrank.com/challenges/sam-and-substrings

# TODO
def subStringsSum(arr, length)
  sum = 0
  for i in 0..length-1
    times = length - i
    num = (arr[i]*times).to_i * (i + 1)
    sum += num
  end
  # for i in 0..length-1
  #   indx = length - 1 - i
  #   current_sum = (arr[indx]*(i+1)).to_i + last_sum
  #   sum += current_sum
  #   last_sum = current_sum
  # end
  return sum % (10 **9 + 7)
end

arr = gets.chomp.chars.to_a
length = arr.length
answer = subStringsSum(arr, length)

puts answer

