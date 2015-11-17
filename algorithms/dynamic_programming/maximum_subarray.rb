# https://www.hackerrank.com/challenges/maxsubarray
tests = gets.chomp.to_i

def maxContigSubArrayV2(arr)
  max_contig = arr.first
  max_ending_here = 0
  arr.each do |ele|
    max_ending_here = [ele, max_ending_here + ele].max
    max_contig = [max_contig, max_ending_here].max
  end
  return max_contig
end


def maxNonContigSubArr(arr)
  max_sum = 0
  max_ele = arr.first 
  arr.each do |ele|
    max_sum += ele if ele > 0
    max_ele = ele if ele > max_ele
  end
  max_sum = max_ele if max_sum == 0
  return max_sum

end

tests.times do
  size = gets.chomp.to_i
  arr = gets.chomp.split(' ').map{|e| e.to_i}
  answer1 = maxContigSubArrayV2(arr)
  answer2 = maxNonContigSubArr(arr)
  puts "#{answer1} #{answer2}" 
end
