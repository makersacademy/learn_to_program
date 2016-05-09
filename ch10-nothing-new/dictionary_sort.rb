def dictionary_sort arr
  l = arr.length 
  n = 0
 
    while l-1 > n
        if  arr[n].downcase > arr[n+1].downcase
            arr << arr[n]
            arr.delete_at(n)
            n = 0
        else
            n += 1
        end
    end
    arr
end
#Dictionary sort. Your sorting algorithm is pretty good, sure. But there was
#always that sort of embarrassing point you were hoping I’d just sort of
#gloss over, right? About the capital letters? Your sorting algorithm is good
#for general-purpose sorting, but when you sort strings, you are using the
#ordering of the characters in your fonts (called the ASCII codes) rather
#than true dictionary ordering. In a dictionary, case (upper or lower) is
#irrelevant to the ordering. So, make a new method to sort words (something
#like dictionary_sort). Remember, though, that if I give your program words
#starting with capital letters, it should return words with those same capital
#letters, just ordered as you’d find in a dictionary.