def sort(arr)
  return arr if arr.length < 1
  pivot = arr.pop
  less = arr.select { |item| item < pivot}
  more = arr.select { |item| item >= pivot}

  sort(less) + [pivot] + sort(more)
end