# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  res = 0
  until n == 0
    res += n / 5
    n /= 5
  end
  res
end
