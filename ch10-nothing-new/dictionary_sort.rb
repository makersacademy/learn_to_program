def dictionary_sort arr
  # your code here
  return arr if arr.length < 1
  tmp = arr.pop
  first = arr.select{|t| t.downcase < tmp.downcase}
  last  = arr.select{|t| t.downcase >= tmp.downcase}
  dictionary_sort(first) + [tmp] + dictionary_sort(last)
end
