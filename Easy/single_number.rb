# @param {Integer[]} nums
# @return {Integer}

def single_number(nums)
    sum1 = nums.reduce(:+)
    sum2 = 2*(nums.uniq).reduce(:+)    
    sum2 - sum1
end

# bit operation
def single_number_2(nums)
  res = nums[0]
  nums[1...nums.size].each { |n| res ^= n}
  res
end

nums = [1,1,2,2,3]
puts single_number_2(nums)