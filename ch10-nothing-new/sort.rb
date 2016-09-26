def sort arr
return arr if arr.count <= 1    
  still_unsorted = arr
  already_sorted = []
  for count in 0...arr.length
    smallest = still_unsorted[0].downcase
    key = ""
    for counter in 0...still_unsorted.length
        if still_unsorted[counter].downcase <= smallest
            smallest = still_unsorted[counter].downcase
            smallest_orig_case = still_unsorted[counter]
            key = counter
        end    
    end
    already_sorted.push smallest_orig_case
    still_unsorted.delete_at(key.to_i)
  end
  already_sorted
end

#print sort ["Glenn", "Is", "writing", "a", "sort", "method", "did", "You", "Know"]