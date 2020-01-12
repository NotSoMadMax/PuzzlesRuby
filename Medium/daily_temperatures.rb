# @param {Integer[]} t
# @return {Integer[]}
def daily_temperatures(t)
  res = Array.new(t.size, 0)
  stack = Array.new

  t.each_with_index do |temp, i|
    while stack.size > 0 && temp > t[stack.last] do
      prev = stack.pop
      res[prev] = i - prev
    end
    stack.push(i)
  end

  res
end