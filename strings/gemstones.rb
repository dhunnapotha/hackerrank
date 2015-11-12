# Enter your code here. Read input from STDIN. Print output to STDOUT
# https://www.hackerrank.com/challenges/gem-stones


def findGemStones(compositions)
  alphabets = "abcdefghijklmnopqrstuvwxyz".chars.to_a
  result = compositions.inject(alphabets) { |mem, var| mem & var.chars.to_a.uniq }
  result.count
end

stones = gets.chomp.to_i
compositions = []
stones.times do
  compositions << gets.chomp
end

answer = findGemStones(compositions)
puts answer

