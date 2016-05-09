#def sort arr
  # your code here
#end


#def sort some_array # This "wraps" recursive_sort.
#recursive_sort some_array, []
#end
#def recursive_sort unsorted_array, sorted_array
# Your fabulous code goes here.
#end

def sort arr
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