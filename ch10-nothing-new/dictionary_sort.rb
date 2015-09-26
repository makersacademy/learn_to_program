def dictionary_sort some_array # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted, sorted

  # We can break now if we have finished sorting (makes the recursion work).
  if unsorted.length <= 0 # Err, why does this need to be less than or equal to to run properly!?
    return sorted
  end

  # Initialise the unsorted output array and smallest value.
  unsorted_out = []
  smallest = unsorted.pop

  # Step through the unsorted values, find the smallest and push the rest onto the unsorted output array.
  unsorted.each do |test|
    if test.downcase < smallest.downcase
      unsorted_out.push smallest
      smallest = test
    else
      unsorted_out.push test
    end
  end

  # Add to the sorted list here.
  sorted.push smallest

  # Here is the recursion!
  recursive_sort unsorted_out, sorted

end

# puts dictionary_sort(['aardvark', 'Beekeeper', 'bop', 'Bop', 'bop', 'rar', 'Zoology'])