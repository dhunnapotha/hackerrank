# https://www.hackerrank.com/challenges/quicksort2/submissions/code/10464138
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end


def  partition(ar)
  spoiled = ar.shift
  less_than_array = ar.reject { |e| e >= spoiled }
  less_than_array + [spoiled] + (ar - less_than_array)
end
cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map { |e| e.to_i };
ar = partition(ar);
print_array(ar)
