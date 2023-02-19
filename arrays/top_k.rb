def top_k_frequent(nums, k)
  count = Hash.new(0)
  final = []
  nums.each do |num|
    count[num] += 1
  end

  sorted = count.sort_by {|k, v| v}.reverse

  k.times do |i|
    final << sorted[i][0]
  end

  final
end

nums = [4,1,-1,2,-1,2,3]
k = 2
top_k_frequent(nums, k)

# strategy
# make a hashmap counting the number of each element
# return the K highest values