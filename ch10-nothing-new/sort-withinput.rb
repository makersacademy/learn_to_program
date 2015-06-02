def input
  puts 'Please write me a list if words to sort! When you\'re done, just press enter:'
  array = []

  while true
  word = gets.chomp.downcase
    if word == ''
      break
    else
      array.push word
    end
  end
  return array
end


def wordsort sorted, unsorted
  if unsorted.length == 0
    return sorted
  end

  newlist = []

  smallestword = unsorted.pop
    unsorted.each do |unsortedword|
      if unsortedword < smallestword
        newlist.push smallestword
        smallestword = unsortedword
      else
        newlist.push unsortedword
      end
    end
    sorted.push smallestword
  return wordsort sorted,newlist
end

puts wordsort [], input
