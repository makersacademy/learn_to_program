def dictionary_sort arr
  return arr if arr.length <= 1
  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end

words = ['can','feel','singing.','like','A','can']
puts(dictionary_sort(words).join(' '))


# def sort arr
#   rec_sort arr, []
# end

# def rec_sort unsorted, sorted
#   if unsorted.length <= 0
#     return sorted
#   end

#   smallest       = unsorted.pop
#   still_unsorted = []

#   unsorted.each do |item|
#     if item.downcase < smallest.downcase
#       still_unsorted.push smallest
#       smallest = item
#     else
#       still_unsorted.push item
#     end
#   end

#   sorted.push smallest
#   rec_sort still_unsorted, sorted
# end

# puts(sort(['Foxtrot', 'hotel', 'bravo', 'Golf', 'charlie', 'delta', 'Alpha', 'echo']).join(' '))