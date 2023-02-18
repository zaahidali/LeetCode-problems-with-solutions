# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

=begin
Example 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 3:
Input: nums = [3,3], target = 6
Output: [0,1]

=end

# Time Complexity  = 0(n) # iterates through the array twice - once to create the hash table and once to find the complement.
# Space Complexity = 0(n) #  it creates a hash table to store the indices of the array elements.

# arr =   [2,3,5,3,4]
# arr = [3, 3] # expected output [0, 1]
arr =   [5,7,5,2, 3,4]
target = 6 # expected output 3,5

def two_sum(arr, target)  
  hash = arr.each_with_index.to_h
  arr.each_with_index do |num, index|
    expected_val = target - num
    if hash.key?(expected_val) && hash[expected_val] != index
      return [index, hash[expected_val]]
    end
  end
  return nil
end


puts two_sum(arr, target)
