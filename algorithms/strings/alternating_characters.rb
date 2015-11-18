# https://www.hackerrank.com/challenges/alternating-characters
def read_until_new_line_and_count
  last_char = nil
  count = 0
  while (char_read = getc) != '\n'
    count += 1 if char_read != last_char
    last_char = char_read
  end
  puts count
end


def read_until_new_line_and_count_v2
  last_char = nil
  count = 0
  read_string = gets.chomp
  read_string.each_char do |char_read|
    count += 1 if char_read == last_char
    last_char = char_read
  end
  puts count
end


test_cases = gets.chomp.to_i
test_cases.times do
  read_until_new_line_and_count_v2
end
