def dictionary_sort arr
  return arr if arr.length <= 1
  middle = arr.pop
  less, more = arr.partition {|x| x.upcase < middle.upcase}
  dictionary_sort(less) + [middle] + dictionary_sort(more)
end