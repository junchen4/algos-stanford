# You are given as input an unsorted array of n distinct numbers, where n is a power of 2. 
# Give an algorithm that identifies the second-largest number in the array, and that uses at most n+log2(⁡n−2) comparisons.

def find_second_largest(arr)
  return arr[0] if arr.length == 1

  largest = arr[0]
  second_largest = arr[1]

  arr.each do |num|
    if num > largest
      second_largest = largest
      largest = num
    elsif num < largest && num > second_largest
      second_largest = num      
    end
  end

  second_largest
end

# Tests
arr = [4,1,-2,0,9,1,10,6]
puts find_second_largest(arr) == 9

arr = [10,9,0,0,1,1,2,9]
puts find_second_largest(arr) == 9

arr = [8,18]
puts find_second_largest(arr) == 8

arr = [8]
puts find_second_largest(arr) == 8

arr = [10]
puts find_second_largest(arr) == 10