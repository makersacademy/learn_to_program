def sort arr
  # your code here
  if arr.length <= 1
    return arr
  end

  arr.sort

end

to_sort = ['tim', 'simon', 'chris', 'alan', 'alwyn', 'tony', 'Zebedee', 'zeb']
p sort(to_sort)
