# https://www.hackerrank.com/challenges/make-it-anagram
str1 = gets.chomp
str2 = gets.chomp

counts_hash = Hash.new(0)
str1.chars.each do |c|
  counts_hash[c] += 1
end

str2.chars.each do |c|
  counts_hash[c] -= 1
end


total = counts_hash.values.inject(0) { |mem, var| mem + var.abs }
puts total

