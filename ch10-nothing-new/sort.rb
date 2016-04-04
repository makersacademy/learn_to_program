def sort(arr)
return arr if arr.length <= 1
  mid = arr.pop
  smallest = arr.select { |x| x < mid }
  biggest = arr.select { |x| x >= mid }
  sort(smallest) + [mid] + (biggest)
end

# Had some problems trying to use if arr.length <= 1 return at first but then realised it was returning nil if it was > 1

