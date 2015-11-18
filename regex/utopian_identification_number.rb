# https://www.hackerrank.com/challenges/utopian-identification-number

n = gets.chomp.to_i

n.times do
  input = gets.chomp
  m = input.match(/^[a-z]{0,3}[0-9]{2,8}[A-Z]{3,}$/)
  answer = m.nil? ? "INVALID" : "VALID"
  puts answer
end