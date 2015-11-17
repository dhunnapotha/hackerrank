# https://www.hackerrank.com/challenges/candies
# TODO
def minCandies(arr, size)
  dp_candies = []
  dp_candies[0] = 1
  for i in 1..size-1
    dp_candies[i] = 
    if (arr[i] > arr[i-1])
      dp_candies[i-1] + 1
    else
      ((i + 1 != size) && (arr[i+1] == 1)) ? 2 : 1
    end
  end
  
  dp_candies.inject(0) { |mem, var| mem + var }
end


n = gets.chomp.to_i
rankings = []
for i in 0..n-1
  rankings[i] = gets.chomp.to_i
end

answer = minCandies(rankings, n)
puts answer
