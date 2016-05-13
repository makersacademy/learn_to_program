def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end

# Using sort method
# arr.sort {|v1, v2| v1.downcase <=> v2.downcase}

# Just sorts numbers
=begin
  sorted = []
  while arr != []
    min = arr.min
    sorted << arr.delete(min)
  end
  sorted
=end
