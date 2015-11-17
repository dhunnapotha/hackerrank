# https://www.hackerrank.com/challenges/dynamic-programming-classics-the-longest-common-subsequence/

# TODO
def backTraceLCSFromArray(lcs_array, arr1, arr2, row, col)
  return if row < 0 || col < 0
  if arr2[row] == arr1[col]
    @back_traced_array << arr2[row]
    backTraceLCSFromArray(lcs_array, arr1, arr2, row-1, col-1)
  else
    return if row.zero? || col.zero?
    if lcs_array[row-1][col] > lcs_array[row][col-1]
      backTraceLCSFromArray(lcs_array, arr1, arr2, row-1, col)
    else
      backTraceLCSFromArray(lcs_array, arr1, arr2, row, col-1)
    end
  end
end

def constructLCSArray(arr1, arr2, length1, length2)
  lcs_array = []
  length2.times do
    lcs_array << [0] * length1
  end
  for row in 0..length2-1
    for col in 0..length1-1
      if arr2[row] == arr1[col]
        value = row > 0 && col > 0 ? lcs_array[row-1][col-1] + 1 : 1
      else
        value = [row > 0 ? lcs_array[row-1][col] : 0, col > 0 ? lcs_array[row][col-1] : 0].max
      end
      lcs_array[row][col] = value
    end
  end
  lcs_array
end


length1, length2 = gets.chomp.split(' ').map{|e| e.to_i}
arr1 = gets.chomp.split(' ').map{|e| e.to_i}
arr2 = gets.chomp.split(' ').map{|e| e.to_i}
@back_traced_array = []

lcs_array = constructLCSArray(arr1, arr2, length1, length2)
backTraceLCSFromArray(lcs_array, arr1, arr2, length2-1, length1-1)


@back_traced_array.reverse!
puts @back_traced_array.inject("") { |mem, var| "#{mem} #{var} " }
