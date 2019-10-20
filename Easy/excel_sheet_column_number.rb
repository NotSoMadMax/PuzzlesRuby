# @param {String} s
# @return {Integer}
def title_to_number(s)
  result = 0
  s.reverse.each_char.with_index do |c, i|
    result += (c.ord - 'A'.ord + 1) * 26**i
  end
  result
end