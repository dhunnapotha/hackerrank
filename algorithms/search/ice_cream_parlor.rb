# https://www.hackerrank.com/challenges/icecream-parlor
def possibleSum(ar, sum)
  ar_size = ar.length
  for i in 0..ar_size-1
    for j in i+1..ar_size-1
      puts "#{i+1} #{j+1}" if(ar[i] + ar[j] == sum)
    end
  end
end





tests = gets.chomp.to_i
tests.times do
  balance = gets.chomp.to_i
  no_of_flavors = gets.chomp.to_i
  flavors = gets.chomp.split(' ').map{|e| e.to_i}
  possibleSum(flavors, balance)
end

