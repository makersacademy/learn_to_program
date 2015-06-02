def dictionarysort sorted, unsorted
  if unsorted.length == 0
    return sorted
  end

  newlist = []

  smallestword = unsorted.pop
    unsorted.each do |unsortedword|
      if unsortedword.downcase < smallestword.downcase
        newlist.push smallestword
        smallestword = unsortedword
      else
      	newlist.push unsortedword
      end
    end
    sorted.push smallestword
  return dictionarysort sorted,newlist
end

puts dictionarysort [], ['orange','apple','Banana','Lemon', 'Grape', 'lime', 'satsuma', 'plum']  
