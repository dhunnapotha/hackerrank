# https://www.hackerrank.com/challenges/play-game
def computeReverseSum(arr, length)
  sum = []
  sum[length-1] = arr[length-1]
  indx = length-2
  while indx >=0
    sum[indx] = arr[indx] + sum[indx+1]
    indx -= 1
  end
  return sum
end


def maxScore(arr, indx, size, running_sum, store)
  return 0 if indx >= size
  return store[indx] if store.has_key?(indx)
  total = running_sum[indx]
  value = [maxScore(arr, indx+1, size, running_sum, store), maxScore(arr, indx+2, size, running_sum, store), maxScore(arr, indx+3, size, running_sum, store)].min
  total - value
end

def computeMaxScores(arr, size, running_sum)
  indx = size - 1 
  # Compute maxScores for all the elements
  store = {}
  while indx >= 0
    value = maxScore(arr, indx, size, running_sum, store)
    store[indx] = value
    indx -= 1
  end
  return store[0]
end



tests = gets.chomp.to_i

tests.times do
  length = gets.chomp.to_i
  arr = gets.chomp.split(' ').map{|e| e.to_i}
  sum = computeReverseSum(arr, length)
  store = {}
  answer = computeMaxScores(arr, length, sum)
  puts answer
end

