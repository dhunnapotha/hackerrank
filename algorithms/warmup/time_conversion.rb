# https://www.hackerrank.com/challenges/time-conversion

require 'scanf'

input = gets.chomp
input.scanf("%d:%d:%d%s") do |hr, min, sec, daytime|

  hr = 0 if hr == 12
  hr += 12 if daytime == 'PM'

  printf "%02d:%02d:%02d", hr, min, sec
end 


