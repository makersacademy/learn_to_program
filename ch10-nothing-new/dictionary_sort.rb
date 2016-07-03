def dictionary_sort arr
  sort_hash = Hash.new
  sorted = []
  arr.each do |word|
    sort_hash[word.downcase] = word
    sorted << word.downcase
  end
  sorted.sort!
  sorted.map! do |sortedword|
    sort_hash[sortedword]
  end
  sorted
end


#words = ['can','feel','singing.','like','A','can']
#p dictionary_sort(words)
