# https://www.hackerrank.com/challenges/closest-numbers
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
end

def getPossiblePairsWithMinAbsSum(ar)
  ar.sort!
  min = ar[1] - ar[0]
  min_array = []
  min_array << ar[0]
  min_array << ar[1]
  size = ar.length

  return min_array if size == 2
  # assumption is size >= 2


  for i in 1..size-2
    diff = ar[i+1] - ar[i]
    min_array = [] if diff < min
    if diff <= min
      min_array << ar[i]
      min_array << ar[i+1]
      min = diff
    end
  end
  return min_array
end


size = gets.chomp.to_i
ar = gets.chomp.split(' ').map{|e| e.to_i}

print_array(getPossiblePairsWithMinAbsSum(ar))
