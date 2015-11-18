# https://www.hackerrank.com/challenges/game-of-rotation/submissions

def pmean(ar)
  pmean = 0
  ar.each_with_index.map do |ele, indx|
    pmean += (ele * (indx+1))
  end
  pmean
end

def getMaxPmean(ar)
  size = ar.length
  elements_sum = ar.inject(0) { |mem, var| mem+var }
  last_sum = pmean(ar)
  max = last_sum

  return max if size <= 1

  for rotation in 1..size-1
    sum = last_sum - (elements_sum) + (ar[rotation-1] * size)
    last_sum = sum
    max = sum if max < sum
  end
  
  max
end

size = gets.chomp.to_i
ar = gets.chomp.split(' ').map{|e| e.to_i}

puts getMaxPmean(ar)






