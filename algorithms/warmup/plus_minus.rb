# https://www.hackerrank.com/challenges/plus-minus

n = gets.chomp.to_i
arr = gets.chomp.split(' ').map{|e| e.to_i}

pos = 0
neg = 0
zeroes = 0

arr.each do |ele|
  if ele > 0
    pos += 1
  elsif ele < 0
    neg += 1
  else
    zeroes += 1
  end 
end


printf "%.3f\n", (pos.to_f/n).round(3)
printf "%.3f\n", (neg.to_f/n).round(3)
printf "%.3f\n", (zeroes.to_f/n).round(3)



