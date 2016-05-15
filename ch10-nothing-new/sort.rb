def sort arr
  return arr if arr.length <= 1
 middle = arr.pop
 less = arr.select{|x| x.downcase < middle.downcase} 
 more = arr.select{|x| x.downcase >= middle.downcase}

  sort(less) + [middle] + sort(more)
 end


print (sort(['the' , 'bird' , 'chirps', 'tweet','twitter', 'is','dead']))
