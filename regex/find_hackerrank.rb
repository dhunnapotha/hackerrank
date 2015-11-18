# https://www.hackerrank.com/challenges/find-hackerrank

def compute_answer(m, input)
  needle = 'hackerrank'
  return -1 if m.nil?
  return 0 if input == needle
  return 1 if m.begin(0) == 0
  return 2 if (m.begin(0) + needle.length) == input.length
  return -1
end

n = gets.chomp.to_i

n.times do 
  input = gets.chomp
  m = input.match('hackerrank')
  answer = compute_answer(m, input)
  puts answer
end
