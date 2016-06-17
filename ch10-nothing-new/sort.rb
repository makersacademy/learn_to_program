def sort(arr)
  rec_sort(arr, [])
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

smallest = unsorted.pop
still_unsorted = []

unsorted.each do |tested_object|
  if tested_object < smallest
    still_unsorted.push(smallest)
    smallest = tested_object
  else
    still_unsorted.push(tested_object)
  end
end

  sorted.push(smallest)

  rec_sort(still_unsorted, sorted)
end

arr = ["pear","banana","strawberry","grape","apple"]
puts sort(arr)

=begin
sorted = []

while arr.length > 0
  sorted << arr.min
  arr.delete(arr.min)
 end
 puts sorted
 arr = sorted
 puts arr
end

arr = ["pear","banana","strawberry","grape","apple"]

sort(arr)
_________________________
sorted = [""]
unsorted = []

while arr.length > 0
  arr.each do |word|
    if word < sorted.last
      sorted.insert(-2, word)
    else
      unsorted << word
    end
  end
end

while unsorted.length > 0
  unsorted.each do |word|
    if word < sorted.last
      sorted.insert(-2, word)
    else
      unsorted << word
    end
  end
end
puts sorted
end

arr = ["pear","banana","strawberry","grape","apple"]
puts arr.length
sort(arr)

sorted = []

  arr.each do |word|
    if word < sorted[0]
      sorted << word
      arr.delete(word)
end
end
end

arr = ["pear","banana","strawberry","grape","apple"]

puts sort(arr)
puts
puts "What it should look like:"
puts arr.sort
=end
