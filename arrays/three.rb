# Brute Force
# def two_sum(nums, target)
#   nums.each_with_index do |num, index|
#     i = 0
#     (nums.length - 1).times do
#       next if index == i 

#       return [index, i] if num + nums[i] == target 
#       i += 1
#     end
#   end
# end

# Add Hash
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
  end
end

two_sum([3,2,3], 6)

# First check first number vs second number
  # If the sum of the two is target end the program
# Check first num vs third num...

# If first number + any of the other numbers doesn't equal the target save the first number into an array
# If second number is present in the hash skip it
# etc...