# One-liner
# def is_anagram(s, t)
#   s.split('').sort == t.split('').sort
# end

# Using Hashes
def is_anagram(s, t)
  return false if s.length != t.length
  
  s_hash = Hash.new(0)
  t_hash = Hash.new(0)

  s.split('').each_with_index do |value, index|
    s_hash[s[index]] += 1
    t_hash[t[index]] += 1
  end

  s_hash === t_hash
end

is_anagram('hello', 'elloh')