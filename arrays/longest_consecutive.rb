def longest_consecutive(nums)
  return 0 if nums.length == 0

  sorted_list = nums.sort
  current = sorted_list[0]
  final = [] 
  arr = [sorted_list[0]]

  sorted_list.each_with_index do |num, index|
    next if index === 0

    if current + 1 == num
      arr << num
    else
      final << arr
      arr = []
    end

    current = num
  end

  final << arr 

  longest = 0
  final.each do |consecutive|
    if consecutive.length > longest
      longest = consecutive.length
    end 
  end 

  p final
  p longest
end

# nums = [100,4,200,1,3,2]
# nums = [0,3,7,2,5,8,4,6,0,1]
nums = [9,1,4,7,3,-1,-1, 0,5,8,-1,6]
# p nums.sort

longest_consecutive(nums)

# Strategy
# Break array in many smaller arrays of sequential numbers
# Find array with longest length then return that arrays length

# GLITCH IS THE LOWEST VALUE REPEATING DOESNT WORK