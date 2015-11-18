# https://www.hackerrank.com/challenges/count-luck
@path_store = []
def path_exists?(mat, rows, cols, src_point, dest_point, history)
  src_x = src_point[:x]
  src_y = src_point[:y]
  dest_x = dest_point[:x]
  dest_y = dest_point[:y]

  return false if src_x < 0 || src_y < 0 || src_x >= rows || src_y >= cols || mat[src_x][src_y] == "X" || history[src_x][src_y]
  return true if src_x == dest_x && src_y == dest_y

  # puts src_point.inspect
  history[src_x][src_y] = true
  # Traverse right, top, left, down
  right_point = {:x => src_x, :y => src_y+1}
  top_point = {:x => src_x-1, :y => src_y}
  left_point = {:x => src_x, :y => src_y-1}
  down_point = {:x => src_x+1, :y => src_y}

  if path_exists?(mat, rows, cols, right_point, dest_point, history)
    @path_store << right_point
    return true
  elsif path_exists?(mat, rows, cols, top_point, dest_point, history)
    @path_store << top_point
    return true
  elsif path_exists?(mat, rows, cols, left_point, dest_point, history)
    @path_store << left_point
    return true
  elsif path_exists?(mat, rows, cols, down_point, dest_point, history)
    @path_store << down_point
    return true
  end
  return false
end

def isPointValidAndCanBeMoved?(mat, rows, cols, point)
  point[:x] >=0 && point[:x] < rows && point[:y] >=0 && point[:y] < cols && (mat[point[:x]][point[:y]] == '.' || mat[point[:x]][point[:y]] == '*' || mat[point[:x]][point[:y]] == 'M')
end

def noOfOpens(mat, rows, cols, point)
  src_x = point[:x]
  src_y = point[:y]

  right_point = {:x => src_x, :y => src_y+1}
  top_point = {:x => src_x-1, :y => src_y}
  left_point = {:x => src_x, :y => src_y-1}
  down_point = {:x => src_x+1, :y => src_y}

  cnt = 0
  cnt += 1 if isPointValidAndCanBeMoved?(mat, rows, cols, right_point)
  cnt += 1 if isPointValidAndCanBeMoved?(mat, rows, cols, top_point)
  cnt += 1 if isPointValidAndCanBeMoved?(mat, rows, cols, left_point)
  cnt += 1 if isPointValidAndCanBeMoved?(mat, rows, cols, down_point)

  return cnt
end

def computeWandWavesInPath(mat, rows, cols, points_path, src_point)
  return 0 if points_path.empty?

  # Ignore the dest point and the last to last point
  points_path.shift

  points_path.reverse!

  confusions = 0
  points_path.each do |p|
    opens = noOfOpens(mat, rows, cols, p)
    confusions += 1 if opens > 2
  end

  opensFromSource = noOfOpens(mat, rows, cols, src_point)
  confusions += 1 if opensFromSource > 1
  # puts points_path.inspect
  return confusions
end

def createHistoryMatrix(rows, cols)
  history = []
  for row in 0..rows-1
    history[row] = [false]*cols
  end
  return history
end

def countWandWaves(mat, rows, cols, src_point, dest_point, k)
  history = createHistoryMatrix(rows, cols)
  @path_store.clear

  path_exists?(mat, rows, cols, src_point, dest_point, history)
  # puts @path_store.inspect
  wandWaves = computeWandWavesInPath(mat, rows, cols, @path_store, src_point)
  k == wandWaves ? "Impressed" : "Oops!"
end

tests = gets.chomp.to_i

tests.times do
  rows, cols = gets.chomp.split(' ').map{|e| e.to_i}
  mat = []
  src_point = {}
  dest_point = {}
  for i in 0..rows-1
    mat[i] = gets.chomp.chars.to_a
    if mat[i].index('M')
      src_point[:x] = i 
      src_point[:y] = mat[i].index('M')
    end
    if mat[i].index('*')
      dest_point[:x] = i
      dest_point[:y] = mat[i].index('*')
    end
  end

  k = gets.chomp.to_i
  answer = countWandWaves(mat, rows, cols, src_point, dest_point, k)
  puts answer
end