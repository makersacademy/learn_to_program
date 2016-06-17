def dictionary_sort arr
  return arr if arr.length <= 1 #If array has 1 word return that array

  middle = arr.pop #Take last word from array and declare)
  less   = arr.select{|x| x.downcase < middle.downcase} #Iterate over remaining array, is middle greater than each iterated word
  more   = arr.select{|x| x.downcase >= middle.downcase} #Iterate over remaining array, is middle greater than or equal to each iterated word

  dictionary_sort(less) + [middle] + dictionary_sort(more) #Combine all words now in order
end

words = ['joe', 'andrea', 'thomas', 'eliza', 'buddy']

puts(dictionary_sort(words).join(' '))
