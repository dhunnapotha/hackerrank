# https://www.hackerrank.com/challenges/fibonacci-modified

def fib(n)
  return @store[n] if @store.has_key?(n)
  value = (fib(n-1) ** 2 + fib(n-2))
  @store[n] = value
  return value
end

a, b, n = gets.chomp.split(' ').map{|e| e.to_i}

@store = {1 => a, 2 => b}

answer = fib(n)
puts answer 
