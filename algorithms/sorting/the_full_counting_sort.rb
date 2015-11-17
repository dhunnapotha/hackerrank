# https://www.hackerrank.com/challenges/countingsort4
def print_array(ar)
  ar.each do |ele|
    print "#{ele} "
  end
end


counts = []
for i in 0..99
  counts[i] = {:cnt => 0, :strings => []}
end


tests = gets.to_i

for i in 1..tests
  in1, string = gets.split(' ')
  num = in1.to_i
  counts[num][:cnt] += 1
  string = '-' if i <= (tests / 2)
  counts[num][:strings] << string
end

for i in 0..99
  print_array(counts[i][:strings])
end

