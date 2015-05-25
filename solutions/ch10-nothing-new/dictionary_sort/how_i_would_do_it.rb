# The well-known quicksort algorithm.
def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase} 
  more = arr.select{|x| x.downcase >= middle.downcase}

  sort(less) + [middle] + sort(more)
end

# words = ['can','feel','singing.','like','A','can'] 
# puts(dictionary_sort(words).join(' '))