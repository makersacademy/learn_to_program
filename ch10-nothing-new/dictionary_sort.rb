#create a wrapping method
def sort(some_array)
    sort_method(some_array, [])
end

#creating the recursive method
def sort_method(unsorted_array, sorted_array)
    if unsorted_array.length <= 0 #checking if there is any words left to sort
        return sorted_array #if no words then output is the complete sorted array
    end
    
smallest = unsorted_array.pop #select a word from the end of the unsorted array
still_unsorted = [] #create a new array to put the unsorted words in

unsorted_array.each do |test_word|
    if test_word < smallest #word is tested if it should come before the selected word
        still_unsorted.push smallest #if it does come before the selected word, then move the selected word into unsorted array
        smallest = test_word #then set 
    else
        still_unsorted.push test_word #if no words found then the 
    end
end

sorted_array.push smallest #pushes the 
    
sort_method still_unsorted, sorted_array #recursive method

end

some_array = ["dog", "ant", "bat", "cucumber"]
puts (sort(some_array))