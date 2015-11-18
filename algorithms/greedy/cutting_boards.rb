# https://www.hackerrank.com/challenges/board-cutting
def countCutsForArray(ar, opp_cuts)
  cost = 0
  ar.each do |val|
    cost += (val * (opp_cuts+1))
  end
  cost
end 

def minCost(hor, ver)
  hor.sort!{|x, y| y <=> x}
  ver.sort!{|x, y| y <=> x}

  hor_cuts = 0
  ver_cuts = 0
  cost = 0

  while ((!hor.empty?) && (!ver.empty?))
    pick_hor = ((hor.first > ver.first) || ((hor.first == ver.first) && (ver_cuts >= hor_cuts)))

    if pick_hor
      current_cost = hor.shift
      cost += current_cost * (ver_cuts + 1)
      hor_cuts +=1
    else
      current_cost = ver.shift
      cost += current_cost * (hor_cuts + 1)
      ver_cuts +=1
    end
  end

  if !hor.empty?
    cost += countCutsForArray(hor, ver_cuts)
  end

  if !ver.empty?
    cost += countCutsForArray(ver, hor_cuts)
  end

  return cost % (10**9 + 7)
end


tests = gets.chomp.to_i
tests.times do
  m, n = gets.chomp.split(' ').map{|e| e.to_i}
  horizontal_weights = gets.chomp.split(' ').map{|e| e.to_i}
  vertical_weights = gets.chomp.split(' ').map{|e| e.to_i}
  cost = minCost(horizontal_weights, vertical_weights)
  puts cost
end

