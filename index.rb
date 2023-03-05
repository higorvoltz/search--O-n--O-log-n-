# Define a function to search for an element in an array using a hash table
# O(n)
def search_array(array, target)
  # Create a hash table of array elements and their indices
  hash_table = {}
  array.each_with_index do |element, index|
    hash_table[element] = index
  end

  # Look up the target element in the hash table
  index = hash_table[target]

  # Return the index of the target element, or nil if not found
  index.nil? ? nil : index
end

beginning_time = Time.now

# Example usage
array = [4, 2, 7, 1, 9, 5, 99, 3, 7, 101, 3, 102, 999, 587, 324, 23, 17]
target = 2
index = search_array(array, target)
puts ("index: #{index}, array[index]: #{array[index]}, target: #{target}")

end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time) * 1000} milliseconds" # Time elapsed 0.025188 milliseconds

# Define a function to search for an element in a sorted array using a hash table
# log(O)n
def binary_search(array, target)
  # Create a hash table of array elements and their indices
  hash_table = {}
  array.each_with_index do |element, index|
    hash_table[element] = index
  end

  # Perform a binary search on the sorted array
  left = 0
  right = array.length - 1
  while left <= right
    mid = (left + right) / 2
    if array[mid] == target
      # Look up the original index of the target element in the hash table
      return hash_table[target]
    elsif array[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  # Return nil if the target element was not found
  nil
end

beginning_time_tree = Time.now

# Example usage
array_tree = [4, 2, 7, 1, 9, 5, 99, 3, 7, 101, 3, 102, 999, 587, 324, 23, 17]
sorted_array = array_tree.sort
target_tree = 2
index_tree = binary_search(sorted_array, target_tree)
puts ("index_tree: #{index_tree}, array_tree[index_tree]: #{array_tree[index_tree]}, target: #{target}")

end_time_tree = Time.now
puts "Time elapsed #{(end_time_tree - beginning_time_tree) * 1000} milliseconds" # Time elapsed 0.010658 milliseconds
