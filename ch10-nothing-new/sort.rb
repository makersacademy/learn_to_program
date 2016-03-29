def sort(arr)
  if arr.length < 2
  return arr
  end
  middle = arr.shift
  lower, higher = arr.partition { | el | el < middle }
  sort(lower) + [middle] + sort(higher)
end