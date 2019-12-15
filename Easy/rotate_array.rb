# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  return if nums.size <= 1 || k < 1

  len = nums.size
  count = 0
  (0...len).each do |i|
    break if count == len

    cur = i
    prev_num = nums[i]
    loop do      
      to_replace = (cur + k) % len
      temp = nums[to_replace]
      nums[to_replace] = prev_num
      prev_num = temp
      cur = to_replace
      count += 1
      break if cur == i
    end
  end
end

nums = [0, 1] # len = 2
rotate(nums, 2)

# Method 1: Move one place at a time. Time limit exceeded
def rotate2(nums, k)
  return if nums.size <= 1 || k < 1

  (0...k).each do |i|
    move_one(nums)
  end
end

def move_one(nums)
  last_num = nums[-1]
  (0...nums.size).each do |i|
    temp = nums[i]
    nums[i] = last_num
    last_num = temp
  end
end

# 0,1,2,3,4,5,6