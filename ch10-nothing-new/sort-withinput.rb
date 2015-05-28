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

puts wordsort [], ['orange','apple','banana','lemon','grape','lime','satsuma','plum']
puts
puts ['orange','apple','banana','lemon','grape','lime','satsuma','plum'].sort