def sort arr     
   recursive_sort arr, []     
end     
        
def recursive_sort unsorted_array, sorted_array     
          
  if unsorted_array.length == 0  
    return sorted_array                    
  end          

  to_delete = 0
  smallest = unsorted_array[0] 
  not_yet_sorted = []
  unsorted_array.each_with_index { |i, index|        
  if i <= smallest     
    smallest = i      
    to_delete = index 
  end}               

  sorted_array << smallest     
  unsorted_array.delete_at(to_delete) 
  notyetsorted = unsorted_array
  recursive_sort notyetsorted, sorted_array        
end  
