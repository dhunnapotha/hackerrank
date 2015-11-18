# https://www.hackerrank.com/challenges/countingsort2
size = gets.to_i

counts = []

for i in 0..99
  counts[i] = 0
end


numbers = gets.split(' ').map { |e| e.to_i }
for i in 0..size-1
  counts[numbers[i]] += 1
end

for i in 0..99
  counts[i].times do
    print i.to_s + ' '
  end
end

