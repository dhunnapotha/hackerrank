# https://www.hackerrank.com/challenges/the-love-letter-mystery

def minOperationsRequired(string)
  half_length = string.length/2
  left_reader = half_length - 1
  right_reader = string.length.odd? ?  half_length + 1 : half_length 
  operations_required = 0

  while left_reader >= 0
    operations_required += (string[right_reader].ord - string[left_reader].ord).abs
    right_reader+= 1
    left_reader -= 1
  end

  puts operations_required
end


test_cases = gets.chomp.to_i
test_cases.times do
  read_string = gets.chomp
  minOperationsRequired(read_string)
end

