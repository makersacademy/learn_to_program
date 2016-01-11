def sort(arr, res=[])
  return res if arr.empty?
  res << arr.slice!(arr.index(arr.inject {|m, w| m < w ? m : w}))
  sort(arr, res)
end
