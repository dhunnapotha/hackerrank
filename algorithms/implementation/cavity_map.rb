# https://www.hackerrank.com/challenges/cavity-map/submissions
def print_row(arr)
  value = arr.inject('') { |mem, var| mem.to_s + var.to_s }
  puts value
end


def isCavity?(mat, row, col)
  num = mat[row][col].to_s
  (mat[row-1][col].to_s < num) && (mat[row+1][col].to_s < num) && (mat[row][col-1].to_s < num) && (mat[row][col+1].to_s < num)
end


size = gets.to_i

mat = []
for i in 0..size-1
  mat[i] = []
end


for i in 0..size-1
  mat[i] = gets.chomp.chars.map(&:to_i)
end


for row in 1..size-2
  for col in 1..size-2
    mat[row][col] = 'X' if isCavity?(mat,row,col)
  end
end


for row in 0..size-1
  print_row(mat[row])
end




