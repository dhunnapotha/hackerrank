tests = gets.chomp.to_i

def getDecentNumber(num)
  # It has to be in the form 5*a + 3 * b
  for i in 0..num/5
    for j in 0..num/3
      if ((i * 5 + j * 3) == num)
        return  "5"*j*3 + "3"*i*5
      end
    end
  end
  return -1
end

tests.times do
  num = gets.chomp.to_i
  puts getDecentNumber(num)
end
