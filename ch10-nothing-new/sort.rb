def sort arr
  return arr if arr.length <= 1 #If array has 1 word return that array

  middle = arr.pop #Take last word from array and declare)
  less   = arr.select{|x| x < middle} #Iterate over remaining array, is middle greater than each iterated word
  more   = arr.select{|x| x >= middle} #Iterate over remaining array, is middle greater than or equal to each iterated word

  sort(less) + [middle] + sort(more) #Combine all words now in order
end

puts(sort(['joe', 'andrea', 'thomas', 'eliza', 'buddy']))
