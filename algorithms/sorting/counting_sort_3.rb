# https://www.hackerrank.com/challenges/countingsort3
counts = []
for i in 0..99
  counts[i] = 0
end


tests = gets.to_i

tests.times do 
  num = gets.split(' ')[0].to_i
  counts[num] += 1
end

until_now = 0
for i in 0..99
  until_now += counts[i]
  print until_now.to_s + ' '
end

