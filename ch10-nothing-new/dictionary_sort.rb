def dictionary_sort array

  if array.length <= 1  # we cannot sort an empty array
  	return array
  	
  else
  	pivot = array.pop #take a word - the last one in the array
  	less = array.select {|word| word.downcase < pivot} #using enummerable create a new array or all the workds "greater" than the pivot word

  	more = array.select {|word| word.downcase >= pivot} # and does it for all the words less than the pivot word and the = for similar words
  	sorted = dictionary_sort(less) + [pivot] + dictionary_sort(more) #now do it recursively
  end
  return sorted

end

words = ['Beer','wine','cider']

puts dictionary_sort(words)