def dictionary_sort arr
arr.join('')
return arr if arr.length <= 1
middle = arr.pop #take last item
less = arr.select{|x| x.downcase < middle.downcase} #compare popped item to each item in turn and store item in less if it's lower
more = arr.select{|x| x.downcase >= middle.downcase}#same with more, but greater than or equal to
dictionary_sort(less) + [middle] + dictionary_sort(more) #for less and more, we need to continue running the sorting until just catting lots of individual vals
end
words = ['can','Feel','singing.','like','A','can']
puts(dictionary_sort(words))
