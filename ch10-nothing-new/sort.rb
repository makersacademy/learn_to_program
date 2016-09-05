def sort arr
  sorted_words = []
  until arr.length == 0 do sorted_words << arr.delete(arr.min)end
  sorted_words
end