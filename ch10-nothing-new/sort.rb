def sort array
  if array.length <= 1  # we cannot sort an empty array
  	return array
  	
  else
  	pivot = array.pop #take a word - the last one in the array
  	less = array.select {|word| word < pivot} #using enummerable create a new array or all the workds "greater" than the pivot word

  	more = array.select {|word| word >= pivot} # and does it for all the words less than the pivot word and the = for similar words
  	sorted = sort(less) + [pivot] + sort(more) #now do it recursively
  end
  return sorted
end

words = ['hat','coat','bed','door','door', 'zoo']

puts sort(words)