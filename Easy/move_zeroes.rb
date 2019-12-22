# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  return if nums.size < 2

  zero_counter = 0
  nums.each_with_index do |n, i|
    if n.zero?
      zero_counter += 1
    else
      nums[i - zero_counter] = n
    end
  end

  (0...zero_counter).each { |i| nums[nums.size - 1 - i] = 0 }
end
