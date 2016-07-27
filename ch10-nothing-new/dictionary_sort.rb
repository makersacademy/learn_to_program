def dictionary_sort arr
  recursive arr, []
end

def recursive unsorted, sorted
return sorted if unsorted == []

  temp = unsorted.shift
  transition = []

  unsorted.each do |word|
    if temp.downcase < word.downcase
      transition << word
    else
      transition << temp
      temp = word
    end
  end
  sorted << temp
  recursive transition, sorted
end

words = [ "Hello", "You", "zzz", "how", "are", "maison", "House" ]
puts dictionary_sort words
