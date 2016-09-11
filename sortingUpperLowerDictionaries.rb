def super_sort unsorted_array
  capitalized = unsorted_array.select {|x| x.capitalize == x}
  uncapitalized = unsorted_array.select {|x| x.capitalize != x}
  capitalized.sort! {|x, y| x <=> y }
  uncapitalized.sort! {|x, y| x <=> y }
  puts capitalized
  puts
  puts
  puts uncapitalized
  
  end
  
  super_sort ["baa", "Baa", "Car", "car"]