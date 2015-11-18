# https://www.hackerrank.com/challenges/sherlock-and-queries
# TODO

def print_array(ar)
  modulo = (10**9) + 7
  ar.each do |ele|
    ele %= modulo
    print "#{ele} "
  end
  puts ""
end

n, m = gets.chomp.split(' ').map{|e| e.to_i}
base_array = gets.chomp.split(' ').map{|e| e.to_i}
divisor_array = gets.chomp.split(' ').map{|e| e.to_i}
multiple_array = gets.chomp.split(' ').map{|e| e.to_i}

for i in 1..m
  common_index = i - 1
  base_number = divisor_array[common_index]
  j = 1
  while true
    indx = base_number * j
    if indx <= n
      base_array[indx-1] *= multiple_array[common_index]
    else
      break
    end
    j += 1
  end
end

print_array(base_array)

