def sort arr
 arr.min(arr.size).to_a.each { |e| arr.delete_at(arr.index(e)) }
end

sort([4,3,5,6,7,4,77,5,7]) # => [3, 4, 4, 5, 5, 6, 7, 7, 77]