# Sort
# def group_anagrams(strs)
#   hash = {}
#   strs.each do |str|
#     if hash[str.split('').sort].nil?
#       hash[str.split('').sort] = [str]
#     else 
#       hash[str.split('').sort] << str
#     end
#   end
#   p hash.values
# end

# def group_anagrams(strs)
#   hash = Hash.new {|h, k| h[k] = []}
#   strs.each do |str|
#     hash[str.split('').sort] << str
#   end
#   p hash.values
# end

# Plan
# First make a hash map
# take each string and split and sort it 
# Save the  split/sorted array as the key and make the value an array x
# Add the values if the key is the same

# Counting
def group_anagrams(strs)
  anagrams = Hash.new { |h, k| h[k] = [] }
  strs.each do |str|
    hash = Hash.new(0)
    str.each_char { |c| hash[c] += 1 }
    anagrams[hash] << str
  end
  anagrams.values
end

strs = ["eat","tea","tan","ate","nat","bat"]

group_anagrams(strs)