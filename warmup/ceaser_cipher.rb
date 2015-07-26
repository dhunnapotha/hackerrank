# https://www.hackerrank.com/challenges/caesar-cipher-1

def rotate_in_range(ele, r_in, r_out, rotation)
  ele += rotation
  if ele > r_out
    ele = r_in + (ele - r_out - 1)
  end
  return ele
end

def compute_answer(input, rotation, alphabets)
  output = "" 
  alphabets = ('a'..'z').map{|x| x}
  rotation %= alphabets.count

  input_asciis = input.chars.map{|x| x.ord}

  input_asciis.map! do |ele|
    # bring the base to a 
    if (ele.ord >= "a".ord && ele.ord <= "z".ord)
      ele = rotate_in_range(ele, "a".ord, "z".ord, rotation)
    elsif (ele.ord >= "A".ord && ele.ord <= "Z".ord)
      ele = rotate_in_range(ele, "A".ord, "Z".ord, rotation)
    end
    ele
  end

  input_asciis.map!(&:chr)
  output = input_asciis.join
  return output
end

alphabets = []

n = gets.chomp.to_i
input = gets.chomp
rotation = gets.chomp.to_i

answer = compute_answer(input, rotation, alphabets)
puts answer

