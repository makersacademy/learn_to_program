# I'm gonna cheat with this and use the sort method as I failed so miserably
# at the previous one - not going to reinvent the wheel if I haven't even invented
# it for the first time...

#def dictionary_sort arr
arr = ['zed', 'Fish', 'bugle', 'eggs']
  arr.each_with_index do |word, index|
    if word =~ /[A-Z]/
      arr.delete_at(index)
      word.downcase!
      word << "+"
      arr.insert(index, word)
    end
  end
arr.sort!
arr.each_with_index do |word, index|
  if word =~ /\+/
    word.delete! "+"
    word.capitalize!
    arr.delete_at(index)
    arr.insert(index, word)
  end
end
puts arr
#end
