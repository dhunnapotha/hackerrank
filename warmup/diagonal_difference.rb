# https://www.hackerrank.com/challenges/diagonal-difference
n = gets.chomp.to_i

arr = []
for i in 0..n-1
  arr[i] = gets.chomp.split(' ').map{|e| e.to_i}
end

left_diag = 0
right_diag = 0
for i in 0..n-1
  left_diag += arr[i][i]
  right_diag += arr[i][n-1-i]
end

answer =  left_diag - right_diag
puts answer.abs
