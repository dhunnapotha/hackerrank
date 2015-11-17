# https://www.hackerrank.com/challenges/lonely-integer
def  lonelyinteger( a)
  a.inject(0) { |mem, var| mem ^ var  }
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)
