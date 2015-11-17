#https://www.hackerrank.com/challenges/cipher

def print_array(ar)
  ar.each do |ele|
    print "#{ele}"
  end
end

def xor(ar)
  ar.inject(0) { |mem, var| mem ^ var }
end


def decipher(ciphered, shifts, length)
  # The first k bits are nothing but xoring with previous answer bit
  # Once the k bits are known, xoring the K-1 bits will give 
  deciphered = []

  previous_answer = 0

  easy_output_until = shifts > length ? length : shifts 

  # answer is achieved just by xoring with the previous answer bit
  for i in 0..easy_output_until-1
    deciphered[i] = ciphered[i] ^ previous_answer
    previous_answer = ciphered[i]
  end

  return deciphered if easy_output_until == length

  xor_of_last_shift_bits = xor(deciphered[easy_output_until-shifts+1..easy_output_until-1])

  for i in easy_output_until..length-1
    deciphered[i] = xor_of_last_shift_bits ^ ciphered[i]
    xor_of_last_shift_bits ^= deciphered[i] ^ deciphered[i-shifts+1]
  end
  deciphered

end



length, shifts = gets.chomp.split(' ').map{|e| e.to_i}
ciphered = gets.chomp.chars.to_a.map{|e| e.to_i}

answer = decipher(ciphered, shifts, length)
print_array answer
