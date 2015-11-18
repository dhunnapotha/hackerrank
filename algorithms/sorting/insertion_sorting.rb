# https://www.hackerrank.com/challenges/insertionsort1
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end

def  insertionSort( ar)
  spoiled = ar.last
  current_ptr = ar.length - 2
  while current_ptr >= 0
    if ar[current_ptr] > spoiled
      ar[current_ptr + 1] = ar[current_ptr]
      print_array(ar)
    else
      ar[current_ptr + 1 ] = spoiled
      break
    end
    current_ptr -= 1
  end

  ar[0] = spoiled if current_ptr < 0
  print_array(ar)

end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
