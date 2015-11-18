# https://www.hackerrank.com/challenges/staircase
n = gets.chomp.to_i

for i in 1..n
  printf "%#{n}s\n","#"*i
end
