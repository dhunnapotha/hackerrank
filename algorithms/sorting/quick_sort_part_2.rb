# https://www.hackerrank.com/challenges/quicksort2
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end


def partition(ar)
  return ar if ar.length <= 1
  spoiled = ar.shift
  less_than_array = ar.reject { |e| e >= spoiled }
  less_than_array = partition(less_than_array)

  greater_than_array = (ar - less_than_array)
  greater_than_array = partition(greater_than_array)

  sorted_array = less_than_array + [spoiled] + greater_than_array
  print_array(sorted_array)
  return sorted_array
end
cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map { |e| e.to_i };
ar = partition(ar);
