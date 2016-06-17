def dictionary_sort arr
    recursive_sort arr, []
end

def recursive_sort unsorted, sorted
    if unsorted.length == 0
        sorted
    else
        still_unsorted = []
        small = unsorted.pop
        
        unsorted.each do |word|
            if word.downcase < small.downcase
                still_unsorted << small
                small = word
            else
                still_unsorted << word
            end
        end
        sorted << small
        recursive_sort still_unsorted, sorted
    end
end