#Wrap:
def sort arr
  recursive arr, []
end


# Finding smallest word, trying one by one:
def recursive unsorted, sorted
  return sorted if unsorted == []
  small_word = unsorted.shift
  transition = []
  unsorted.each do |word|
    if small_word < word
      transition << word
    else
      transition << small_word
      small_word = word
    end
  end
  sorted << small_word
  recursive transition, sorted
end

arr = ["hello", "how", "are", "you"]
puts sort arr
