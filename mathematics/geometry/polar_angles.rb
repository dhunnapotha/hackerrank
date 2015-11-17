# https://www.hackerrank.com/challenges/polar-angles
num = gets.chomp.to_i
points_hash = [] 

def getPoloarAngle(x, y)
  angle = Math.atan2(y, x)
  angle += (2 * Math::PI) if angle < 0
  return angle
end

def getDistance(x, y)
  x ** 2 + y ** 2
end

def printPoints(arr)
  arr.each do |point|
    puts "#{point[:x]} #{point[:y]}"
  end
end


def sortByPolar(arr, num)
  arr.sort! do |point1, point2|
    val = point1[:angle] <=> point2[:angle]
    val.zero? ? point1[:distance] <=> point2[:distance] : val
  end
  return arr
end



for i in 0..num-1
  point = {}
  point[:x], point[:y] = gets.chomp.split(' ').map{|e| e.to_i}
  point[:distance] = getDistance(point[:x], point[:y])
  point[:angle] = getPoloarAngle(point[:x], point[:y])
  points_hash[i] = point 
end

final_array = sortByPolar(points_hash, num)
printPoints(final_array)



