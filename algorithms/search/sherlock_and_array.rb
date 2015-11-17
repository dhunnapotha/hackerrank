# https://www.hackerrank.com/challenges/sherlock-and-array
def isRequiredElementPresent(arr)
  total_sum = 0
  for i in arr
    total_sum += i
  end

  running_sum = 0

  for i in arr
    return "YES" if ((2 * running_sum + i) == total_sum)
    running_sum += i
  end
  return "NO"
end



tests = gets.chomp.to_i

tests.times do
  num = gets.chomp.to_i
  arr = gets.chomp.split(' ').map { |e| e.to_i }
  puts isRequiredElementPresent(arr)
end



