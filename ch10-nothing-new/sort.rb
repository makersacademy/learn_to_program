#Quick sort algorithm

def sort arr
  return arr if arr.size <= 1
  pivot = arr.shift
  less = arr.select {|element| element < pivot}
  more = arr.select {|element| pivot<=element}
  sort(less) + [pivot] + sort(more)
end