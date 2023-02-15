# Brute Force
def contains_duplicate(nums)
  saved_nums = [nums[0]]

  nums.each_with_index do |num, index|
    next if index === 0

    if saved_nums.include?(num)
      return true
    else 
      saved_nums << num
    end 
  end

  false
end

# Sort first
def contains_duplicate(nums)
  sorted_array = nums.sort
  saved_num = sorted_array[0]

  sorted_array.each_with_index do |num, index|
    next if index === 0

    if num == saved_num
      return true
    else 
      saved_num = num
    end
  end

  false
end