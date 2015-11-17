# https://www.hackerrank.com/challenges/encryption
input = gets.chomp
length = input.length

sqrt = Math.sqrt(length)
sqrt_to_i = sqrt.to_i
rows, cols = (sqrt_to_i * sqrt_to_i == length) ? [sqrt_to_i, sqrt_to_i] : [sqrt_to_i, sqrt_to_i + 1]
rows += 1 if (rows * cols < length) # this is the only case that can reesult in < length 

for col in 0..cols-1
  str = ""
  for row in 0..rows-1
    indx = (row * cols) + col
    char = input[indx]
    str += char unless char.nil?
  end
  print "#{str} "
end

