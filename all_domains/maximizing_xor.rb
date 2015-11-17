# https://www.hackerrank.com/challenges/maximizing-xor/submissions
def maxXor(l, r)
  arr = *(l..r)
  max = 0
  arr.combination(2) do |c|
    xor = c[0] ^ c[1]
    max = xor if xor > max
  end
  return max
end

l = gets.to_i
r = gets.to_i
print maxXor(l, r)

