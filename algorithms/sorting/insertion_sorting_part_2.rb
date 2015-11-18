# https://www.hackerrank.com/challenges/insertionsort2
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end

def  insertionSort( ar, pos)
  spoiled = ar[pos]
  current_ptr = pos - 1 
  while current_ptr >= 0
    if ar[current_ptr] > spoiled
      ar[current_ptr + 1] = ar[current_ptr]
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

for i in 1..ar.length-1
  insertionSort( ar, i )
end

