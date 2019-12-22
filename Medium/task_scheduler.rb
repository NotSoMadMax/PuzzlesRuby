# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  return 0 if tasks.empty?

  count = Hash.new(0)
  tasks.each { |t| count[t] += 1 }
  count = count.sort_by { |_key, value| -value }  # count is an 2d array now  

  max = count.shift[1]  
  idle_time = (max - 1) * n  

  until count.empty?
    cur_max = count.shift
    idle_time -= [max - 1, cur_max[1]].min
  end

  idle_time > 0 ? idle_time + tasks.size : tasks.size
end
