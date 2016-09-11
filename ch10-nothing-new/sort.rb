def sort arr
  rec_sort arr, []
end

def rec_sort arr, sorted
  smallest = ""
  arr.each do |x|
    if (smallest == "" || x < smallest)
      smallest = x
    end
  end
  arr.each do |y|
    if y == smallest
      sorted << smallest
    end
  end
  arr.delete(smallest)
  if arr.length > 0
    rec_sort arr, sorted
  else
    return sorted
  end
end
