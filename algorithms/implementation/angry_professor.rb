#https://www.hackerrank.com/challenges/angry-professor
tests = gets.to_i
tests.times do
  n, k = gets.chomp.split(' ').map{|e| e.to_i}
  a = gets.chomp.split(' ').map{|e| e.to_i}
  in_time = a.count{|x| x <= 0}
  answer = (in_time >= k) ? "NO" : "YES"
  puts answer
end

