
# INCOMPLETE!! incomplete sort
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end


def partition(ar)
  spoiled = ar.last
  greater_partition_ptr = -1
  swaps = 0 
  for read_ptr in 0..ar.length - 2
    if ar[read_ptr] < spoiled
      # swap
      if greater_partition_ptr!= -1
        temp = ar[read_ptr]
        ar[read_ptr] = ar[greater_partition_ptr]
        ar[greater_partition_ptr] = temp
        greater_partition_ptr += 1 
      end
      swaps += 1
    else
    end
  end

end
cnt = gets.to_i;
ar = STDIN.gets.chomp.split(" ").map { |e| e.to_i };
ar = partition(ar);
