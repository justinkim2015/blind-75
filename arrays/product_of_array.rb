# Brute force method
# def product_except_self(nums)
#   array = []
#   i = 0

#   nums.length.times do 
#     final = 1

#     nums.each_with_index do |num, index|
#       next if i == index 

#       final *= num
#     end 

#     array << final 
#     i += 1
#   end

#   array
# end

# Prefix and Postfix
def product_except_self(nums)
  pre = []
  total_pre = 1
  nums.each do |num|
    pre << total_pre
    total_pre *= num
  end

  post = []
  total_post = 1
  (nums.length - 1).downto(0) do |index|
    post << total_post
    total_post *= nums[index]
  end 

  final = []

  i = 0
  nums.length.times do
    final << pre[i] * post[nums.length - 1 - i]
    i += 1
  end

  final
end

nums = [1,2,3,4]
product_except_self(nums)