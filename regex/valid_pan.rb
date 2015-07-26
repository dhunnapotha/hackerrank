# https://www.hackerrank.com/challenges/valid-pan-format

n = gets.chomp.to_i

n.times do
  input = gets.chomp
  output = input.match(/^[A-Z]{5}[0-9]{4}[A-Z]$/)
  puts output.nil? ? "NO" : "YES"
end
