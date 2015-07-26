# https://www.hackerrank.com/challenges/split-number
n = gets.chomp.to_i

n.times do
  input = gets.chomp
  input.match(/([0-9]{1,3})( |-)([0-9]{1,3})( |-)([0-9]{1,10})/)
  puts "CountryCode=#{$1},LocalAreaCode=#{$3},Number=#{$5}"
end



