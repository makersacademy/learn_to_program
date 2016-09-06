def dictionary_sort arr
	sorted_words = []
  arr.each {|item| arr[arr.index(item)] = item.downcase}
  until arr.length == 0 do sorted_words << arr.delete(arr.min)end
  print sorted_words
end

dictionary_sort ["xczcz","Gdfhui","qwruqio","Fbbfak"]