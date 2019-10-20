require 'set'
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  appeared = Set.new
  until appeared.include?(n)
    appeared << n
    n = digit_square(n)
  end
  n == 1
end

def digit_square(n)
  sum = 0
  while n.positive?
    cur_digit = n % 10
    sum += cur_digit**2
    n /= 10
  end
  sum
end
