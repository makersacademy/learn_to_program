def sort words
    recursive_sort words, []
end
#wrapping - adds the empty array recursive sort needs.

def recursive_sort unsorted_words, sorted_array
    
    if unsorted_words.length <= 0
        return sorted_array
    end
#if the array is nothing then doesn't get stuck in the loop        
        smallest= unsorted_words.pop
        still_unsorted = []
#takes the last item in the array and makes that the minimum. Creates temporary array.

    unsorted_words.each do |word|
    if word.downcase < smallest.downcase         
        still_unsorted << smallest
        smallest = word
#goes through each word in the array and compares it to the smallest. If the word is smaller,
        #that word becomes the new minimum. 
        
    else
       still_unsorted << word
       #when the next word is bigger then the minimum that is pushed to unsorted. This continues
       #until all the words are  moved to still_unsorted and only the minimum remains in the 
       #orginal array
    end
end

    
    sorted_array << smallest
    recursive_sort still_unsorted, sorted_array
#Minimum is moved to the [0] position in sorted_array and the method calls itself, this time passing the new list of words in still_unsorted.

end

puts (sort(['R hello', 'b nice', 'AAA cool',])) 
