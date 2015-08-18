def sort array
  if array.length <= 1
  	return array
  	
  else
  	pivot = array.pop
  	less = array.select {|word| word < pivot}

  	more = array.select {|word| word >= pivot}
  	sorted = sort(less) + [pivot] + sort(more)
  end
  return sorted
end

words = ['hat','coat','bed','door','door', 'zoo']

puts sort(words)