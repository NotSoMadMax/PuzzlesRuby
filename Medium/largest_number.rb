# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  numbers = nums.map { |n| LargeNumber.new(n.to_s) }
  numbers = numbers.sort
  return '0' if numbers[-1].getnum.to_i == 0
  res = ""
  numbers.reverse.each do |n|
    res += n.getnum
  end
  res
end

class LargeNumber
  include Comparable
  attr :number # string

  def initialize(number)
    @number = number
  end

  def <=>(other)
    return 1 if (number + other.number).to_i > (other.number + number).to_i
    return -1 if (number + other.number).to_i < (other.number + number).to_i
  
    0
  end

  def getnum
    @number
  end
end

puts largest_number([30, 4, 305])
