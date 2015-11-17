# https://www.hackerrank.com/challenges/cut-the-sticks/submissions
sticks = gets.to_i

lengths = gets.chomp.split(' ').map { |e| e.to_i }

while lengths.size > 0
  puts lengths.size
  min = lengths.min
  lengths.map! { |e| e - min }
  lengths.reject! { |e| e <= 0 }
end



