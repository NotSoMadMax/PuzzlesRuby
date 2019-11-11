require 'set'

# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)  
  return [] if s.size <= 10

  res = Set.new
  unique = Set.new
  (0..(s.size - 10)).each do |i|
    res << s[i..(i + 9)] unless unique.add? s[i..(i + 9)]
  end
  res.to_a
end
