# LEARNING TO PROGRAM WITH CHRIS PINE, 10.3 ex 2
################################################
# Dictionary sort. Your sorting algorithm is pretty good, sure. But there was
# always that sort of embarrassing point you were hoping I’d just sort of
# gloss over, right? About the capital letters? Your sorting algorithm is good
# for general-purpose sorting, but when you sort strings, you are using the
# ordering of the characters in your fonts (called the ASCII codes) rather
# than true dictionary ordering. In a dictionary, case (upper or lower) is
# irrelevant to the ordering. So, make a new method to sort words (something
# like dictionary_sort). Remember, though, that if I give your program words
# starting with capital letters, it should return words with those same capital
# letters, just ordered as you’d find in a dictionary.

def dictionary_sort(arr)
  return arr if arr.length < 1
  
  pivot = arr.pop
  less = arr.select { |item| item.downcase < pivot.downcase}
  more = arr.select { |item| item.downcase >= pivot.downcase}
  
  dictionary_sort(less) + [pivot] + dictionary_sort(more)
end
