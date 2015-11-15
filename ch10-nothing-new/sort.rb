def sort arr
    sort_method arr, []
end

# take each word in the array and compare it to the last word in the array
# if it is bigger, put the tested word into the unsorted array
# if it is smaller, use that as the comparator instead and send the original word to the unsorted array


def sort_method unsorted, sorted
# end the programme when the unsorted array is empty
  if unsorted.length == 0
    return sorted
  end

smallest = unsorted.pop
still_unsorted = []

unsorted.each do |testedword|
  if testedword > smallest
    still_unsorted.push testedword # testedword is bigger than the reference word so will need to be sorted
  else
    still_unsorted.push smallest # 'smallest' goes in the unsorted array as turns out was not the smallest
    smallest = testedword # sets the tested word as smallest found so far in the array
  end
end

sorted.push smallest

sort_method still_unsorted, sorted

end



puts sort ["d", "e", "a", "c" ]

puts sort ["e", "a", "c", "d" ]

puts sort ["d", "e", "a", "a" ]
