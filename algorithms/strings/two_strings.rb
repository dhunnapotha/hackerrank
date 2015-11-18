# https://www.hackerrank.com/challenges/two-strings

testcases = gets.chomp.to_i

testcases.times do
  a = gets.chomp.chars.to_a
  b = gets.chomp.chars.to_a

  val = ((a & b).length > 0)  ? "YES" : "NO"
  puts val 
end
