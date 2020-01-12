# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  min_wrong = 1 << 64 # the minimum number that is misplaced
  max_wrong = - min_wrong - 1 # the maximum number that is misplaced

  go_wrong = false
  (1...nums.size).each do |i|
    go_wrong = true if nums[i] < nums[i - 1]
    min_wrong = [min_wrong, nums[i]].min if go_wrong
  end

  go_wrong = false
  (nums.size - 2).downto(0) do |i|
    go_wrong = true if nums[i] > nums[i + 1]
    max_wrong = [max_wrong, nums[i]].max if go_wrong
  end

  puts min_wrong, max_wrong
  # find right places for misplaced min and max number
  l = 0
  r = nums.size - 1
  nums.each_index do |i|
    l = i
    break if nums[i] > min_wrong      
  end

  (nums.size - 1).downto(0) do |i|
    r = i
    break if nums[i] < max_wrong                
  end

  r - l <= 0 ? 0 : r - l + 1
end

puts find_unsorted_subarray([1,2,3,4])