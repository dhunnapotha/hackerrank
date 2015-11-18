# https://www.hackerrank.com/challenges/sherlock-and-gcd/submissions

# todo
class Sgcd
  attr_accessor :num, :factors

  def initialize num
    @num = num
    @factors = []
    compute_factors
  end

  private

  def compute_factors
    (1..num).each do |x|
      factors << x if (num % x == 0)
    end
  end

end


tests = gets.to_i
tests.times do
  size = gets.chomp
  arr = gets.chomp.split(' ').map(&:to_i)
  objs = []
  arr.uniq!
  arr.each do |x|
    objs << Sgcd.new(x)
  end
  
  common_factors = objs.first.factors

  objs.inject(common_factors) {|ele| ele & common_factors}
  gcd = common_factors.max
  answer = (gcd >=2 && arr.include?(gcd)) ? "NO" : "YES"
  puts answer
end

