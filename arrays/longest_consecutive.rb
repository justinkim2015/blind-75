def longest_consecutive(nums)
  return 0 if nums.length == 0

  sorted_list = nums.sort
  current = sorted_list[0]

  consecutive = 1

  sorted_list.each_with_index do |num, index|
    next if index === 0 || current === num

    if current + 1 == num
      p current
      p num
      consecutive += 1
      current = num
    else 
      return consecutive
    end
  end

  consecutive
end

# nums = [100,4,200,1,3,2]
# nums = [0,3,7,2,5,8,4,6,0,1]

nums = [9,1,4,7,3,-1,0,5,8,-1,6]

longest_consecutive(nums)

p nums.sort
# expected output 4