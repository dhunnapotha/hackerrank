# https://www.hackerrank.com/challenges/two-arrays/submissions
def isPossible(in1, in2, min_total)
  length = in1.length
  for i in 0..length-1
    return 'NO' if in1[i] + in2[i] < min_total
  end
  return 'YES'
end

tests = gets.chomp.to_i

tests.times do
  size, min_total = gets.chomp.split(' ').map{|e| e.to_i}
  in1 = gets.chomp.split(' ').map{|e| e.to_i}
  in2 = gets.chomp.split(' ').map{|e| e.to_i}
  answer = isPossible(in1.sort!, in2.sort!{|x, y| y <=> x}, min_total)
  puts answer
end
