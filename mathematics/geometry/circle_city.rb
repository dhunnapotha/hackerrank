# https://www.hackerrank.com/challenges/circle-city
# todo
def findIfSafe(r, k)
  radius = Math.sqrt(r).to_i
  count = 0
  x = radius
  y = radius
  
  for x in 0..radius
    for y in 0..radius
      if (x **2 + y **2 == r)
        if (x == 0 || y == 0)
          count += 2
        else
          count += 4
        end
      end
    end
  end

  return k >= count ? "possible" : "impossible"
end



tests = gets.chomp.to_i

tests.times do
  r, k = gets.chomp.split(' ').map{|e| e.to_i}
  answer = findIfSafe(r, k)
  puts answer
end


