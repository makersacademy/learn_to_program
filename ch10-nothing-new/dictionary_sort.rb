def dictionary_sort arr
  rec_dic_sort arr, []
end

def rec_dic_sort unsorted, sorted
  return sorted if unsorted.length <=0

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |object|
    if object.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = object
    else
      still_unsorted << object
    end
  end

  sorted << smallest
  rec_dic_sort still_unsorted, sorted

end

puts dictionary_sort ["Tar", "rat", "Art"]
