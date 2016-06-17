def sort arr
  my_sort arr, []
end

def my_sort unsorted, sorted
  sort_hash = Hash.new
  if unsorted.length <= 0
    return sorted
  end
  unsorted.each do |word|
    sort_hash[word.downcase] = word
    sorted << word.downcase
  end
  sorted.sort!
  sorted.map! do |sortedword|
    sort_hash[sortedword]
  end
  sorted
end


#my_arry = ['can', 'feel', 'singing', 'like', 'a', 'can']
#puts my_arry.sort

#my_arry2 = []
#puts my_arry2.sort
