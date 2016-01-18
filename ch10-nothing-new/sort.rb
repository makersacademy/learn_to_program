def sort(arr)
  rec_sort(arr, [])
end

def rec_sort(arr, sorted)
  unsorted = []
  arr.each{ |e|
    bigger = 0
    arr.each { |f|
      bigger += 1 if e > f
    }
    bigger == 0 ? sorted << e : unsorted << e
  }
  return sorted if unsorted == []
  rec_sort(unsorted, sorted)
end
