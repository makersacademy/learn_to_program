def sort arr
  return [] if arr.empty?
  # Pull random value
  pivot = arr.delete_at(rand(arr.size))
  # Left and right values from pivot in array
  left, rigth = arr.partition(&pivot.method(:>))
  return *left.sort, pivot, *rigth.sort

end

# Explanation : https://www.youtube.com/watch?v=-9oC_XAVLBQ
# http://rails.devcamp.com/ruby-programming/ruby-algorithms/how-to-implement-the-quick-sort-algorithm-in-ruby
