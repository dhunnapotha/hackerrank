# https://www.hackerrank.com/challenges/candies

def minCandies(arr, size)

  dp_candies = [1] * size
  left  = 0
  right = 0

  while left < size
    while(((right+1) < size) && (arr[right] > arr[right+1]))
      right += 1
    end

    count = right - left + 1

    if((left-1) >= 0)

      if ((count <= dp_candies[left-1]) && (arr[left] > arr[left-1]))
        dp_candies[left] = dp_candies[left-1] + 1
        left  += 1
        count -= 1
      end
    end

    while left <= right
      dp_candies[left] = count
      count -= 1
      left += 1
    end

    right = left
  end

  dp_candies.inject(0){|input, ele| input + ele}
end


n = gets.chomp.to_i
rankings = []
for i in 0..n-1
  rankings[i] = gets.chomp.to_i
end

answer = minCandies(rankings, n)
puts answer
