def dictionary_sort arr
	sorted_words = []
  arr.each {|item| arr[arr.index(item)] = item.downcase}
  until arr.length == 0 do sorted_words << arr.delete(arr.min)end
  return sorted_words
end

