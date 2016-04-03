def dictionary_sort(arr)
  if arr.length < 2
  return arr
  end
  middle = arr.shift
  lower, higher = arr.partition { | el | el.downcase < middle }
  dictionary_sort(lower) + [middle] + dictionary_sort(higher)
end