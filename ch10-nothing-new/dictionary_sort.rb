def dictionary_sort arr
  # your code here

return arr if arr.length <= 1

middle = arr.pop

less = arr.select{|x| x.downcase < middle.downcase}

more = arr.select{|x| x.downcase >= middle.downcase}

dictionary_sort(less) + [middle] + dictionary_sort(more)

end

puts(dictionary_sort(words).join(' '))