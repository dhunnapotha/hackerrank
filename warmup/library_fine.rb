# https://www.hackerrank.com/challenges/library-fine


def read_and_compute_answer
  ret_d, ret_m, ret_y = gets.chomp.split(' ').map{|e| e.to_i}
  exp_d, exp_m, exp_y = gets.chomp.split(' ').map{|e| e.to_i}

  exp_time = Time.gm(exp_y, exp_m, exp_d)
  ret_time = Time.gm(ret_y, ret_m, ret_d)

  return 0 if ret_time <= exp_time
  return 10000 if ret_y > exp_y
  return (500 * (ret_m - exp_m)) if ret_m > exp_m
  return (15 * (ret_d - exp_d)) if ret_d > exp_d
end


answer = read_and_compute_answer
puts answer


