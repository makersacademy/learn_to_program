def sort arr
  return arr if arr.size <= 1

  m = arr.pop
  less = arr.select{|x| x < m}
  more = arr.select{|x| x >= m}

  sort(less) + [m] + sort(more)
end
