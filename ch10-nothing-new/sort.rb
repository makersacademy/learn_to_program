def sort (arr)
  # your code here
  print arr 
  puts ""
    return arr if arr.length <= 1
    m = arr.pop
    
    left = arr.select {|x| x <= m}
    right = arr.select{|x| x > m}
    
    sort(left) + [m] + sort(right)
end