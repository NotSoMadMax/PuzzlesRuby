# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  total = nums.reduce(0, :+)
  return false if total.odd?

  target = total / 2
  dp = Array.new(target + 1, false)
  dp[0] = true
  nums.each do |n|
    target.downto(n).each do |x|
      dp[x] = dp[x] || dp[x - n]
    end
  end

  dp[target]
end