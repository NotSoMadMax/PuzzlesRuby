# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    len = nums.size
    count = nums.inject(Hash.new(0)) { |total, n| total[n] += 1; total }
    count.each { |n, c| return n if c > len/2.0}
end
