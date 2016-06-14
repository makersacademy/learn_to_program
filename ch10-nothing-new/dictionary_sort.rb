def dictionary_sort arr
  return arr if arr.size <= 1

  m = arr.pop.downcase
  less = arr.select{|x| x.downcase < m}
  more = arr.select{|x| x.downcase >= m}

  dictionary_sort(less) + [m] + dictionary_sort(more)
end
