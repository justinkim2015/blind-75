# Brute force method
def product_except_self(nums)
  array = []
  i = 0

  nums.length.times do 
    final = 1

    nums.each_with_index do |num, index|
      next if i == index 

      final *= num
    end 

    array << final 
    i += 1
  end

  array
end

nums = [1,2,3,4]
product_except_self(nums)