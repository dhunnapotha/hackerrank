# https://www.hackerrank.com/challenges/find-digits
def no_of_divisors(num) 
    count = 0
    orig_num = num
    while num>0 
      unless (current_digit = num % 10).zero?
        count+= 1 if (orig_num % current_digit).zero?
      end
      num = (num * 1.0 / 10).to_i
    end
    puts count
end


test_cases = gets.chomp.to_i
test_cases.times do
    no_of_divisors(gets.chomp.to_i)
end

