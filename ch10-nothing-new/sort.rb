def creating_arr
    arr, element = [], "x"
    until element.empty?
        puts "Enter some word, please"
        element=  gets.chomp
        arr<< element
    end
    arr.delete_at(-1)
    arr
end

def sort some_arr
    recursive_sort some_arr, []
end

def recursive_sort unsorted_array, sorted_array
   if unsorted_array.length ==1
    sorted_array<< unsorted_array
    return sorted_array.flatten
 end
    pivot= unsorted_array.pop
    new_unsorted= []

    unsorted_array.each { |x| 
        if x < pivot
            new_unsorted<< pivot
            pivot= x
        else
            new_unsorted<< x
        end
    }
    sorted_array<< pivot
    recursive_sort new_unsorted, sorted_array
end

 