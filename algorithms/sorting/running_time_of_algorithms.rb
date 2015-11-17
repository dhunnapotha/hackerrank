# https://www.hackerrank.com/challenges/runningtime
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
  puts ""
end

def  insertionSort( ar, pos)
  spoiled = ar[pos]
  current_ptr = pos - 1 
  shifts = 0
  while current_ptr >= 0
    if ar[current_ptr] > spoiled
      ar[current_ptr + 1] = ar[current_ptr]
      shifts += 1
    else
      ar[current_ptr + 1 ] = spoiled
      break
    end
    current_ptr -= 1
  end

  ar[0] = spoiled if current_ptr < 0
  shifts
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}
shifts = 0
for i in 1..ar.length-1
  shifts += insertionSort( ar, i )
end
puts shifts
