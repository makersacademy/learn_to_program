def dictionary_sort arr     
  recursive_sort arr, []     
end     
        
def recursive_sort unsorted_array, sorted_array     
          
  if unsorted_array.length == 0  
    return sorted_array                    
  end          
  
  to_delete = 0 
  d_unsorted = []
  unsorted_array.each {|i|
  d_unsorted << i.downcase
    }
  smallest = d_unsorted[0]
  not_yet_sorted = []
  d_unsorted.each_with_index { |i, index|        
  if i <= smallest     
    smallest = i      
    to_delete = index 
  end}               
sorted_array << unsorted_array[to_delete]    
unsorted_array.delete_at(to_delete) 
notyetsorted = unsorted_array
recursive_sort notyetsorted, sorted_array        

end 
