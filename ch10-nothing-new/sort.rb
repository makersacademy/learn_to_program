# long way
def sort(arr)
  rec_sort arr, []
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop             # starting point
  still_unsorted = []
  unsorted.each do |tested|
    if tested < smallest                  # comparison
      still_unsorted.push smallest      # add for further resorting later
      smallest = tested                 # reassign value for tested to be compared with next tested value
    else
      still_unsorted.push tested        # in this case tested is larger
    end
  end
    sorted.push smallest
    rec_sort(still_unsorted, sorted)
end

puts (sort(["can", "feel","singing", "like", "a", "can"]))
animals = ["zebra", "donkey", "monkey", "tarsier", "platypus", "anteater", "koala"]
puts
puts sort(animals)

# short way
=begin
def sort(arr)
  return arr if arr.length <= 1               # breaks the loop
  mid_point = arr.pop                         # acts as the starting point for comparisons
  smaller = arr.select {|x| x < mid_point}
  bigger = arr.select {|x| x > mid_point}
  sort(smaller) + [mid_point] + sort(bigger)
end
=end
