# https://www.hackerrank.com/challenges/is-fibo

fib_hash = {0 => 0, 1 => 1}
def fib(num)
    return fib_hash[num] if fib_hash.has_key?(num)
    return fib(num-1) + fib(num-2)
end


def isElementPartOfFib?(num)
  seq = 0
  while true
    fib_val = fib(seq)
    return true if num == fib_val
    return false if num < fib_val 
    seq += 1
  end
end


test_cases = gets.chomp.to_i
test_cases.times do 
  num = gets.chomp.to_i
  isElementPartOfFib?(num) ? puts "isFibo" : puts "isNotFibo"
end