#=begin
#10.2: Rite of Passage: Sorting
def sort(array)
    recursive_sort(array, [])
end

def recursive_sort(list, sorted_list)
    if list.length <= 0
        return sorted_list
    end
    
    word = list.pop #take last word in array to use for comparison
    half_sorted = []
    
    #iterate 'list', comparing each element to 'word'. If there is an element 
    #that is lower than 'word', replace 'word' with value of element
    list.each do |test_word|
        if test_word < word
            half_sorted.push word
            word = test_word
        else
            half_sorted.push test_word
        end
    end
    
    sorted_list.push(word) #append list with sorted list
    recursive_sort(half_sorted, sorted_list)
end

#list_of_words = ['hello','world','bye','go','ask','peel','apple','hello']
#puts(sort(list_of_words))
#=end