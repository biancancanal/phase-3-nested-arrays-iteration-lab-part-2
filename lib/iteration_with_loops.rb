def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
min_results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  smallest_element = 100
  while element_index < src[row_index].count do

    # Array at row_index
    # Element of the inner array at element_index
    # If the length of the current element is greater than the length of longest_string_element
    # Set longest_string_element to the current element
    if src[row_index][element_index] < smallest_element
      smallest_element = src[row_index][element_index]
    end
    element_index += 1
  end

  # We have to check every element in each inner array, so after the loop finishes
  # The current value of longest_string_element is pushed into min_results
  min_results << smallest_element
  row_index += 1
end
min_results
end
