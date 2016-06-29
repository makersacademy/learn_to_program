def sort arr
  arr.sort_by{rand}
end
 
puts(sort(['hi', 'my', 'name', 'is', 'slim', 'shady']).join(' '))
