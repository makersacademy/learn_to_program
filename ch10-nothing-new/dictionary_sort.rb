def dictionary_sort arr
  return arr if arr.length <= 1

  mid = arr.pop
  less = arr.select{|x| x.downcase < mid.downcase}
  more = arr.select{|x| x.downcase >= mid.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)

end
