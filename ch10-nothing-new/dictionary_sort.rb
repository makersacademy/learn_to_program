def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort un_arr, so_arr 
  if un_arr.size <= 0
    return so_arr 
  end

  smallest = un_arr.pop
  still_un_arr = []

  un_arr.each do |word| 
    if word.downcase < smallest.downcase
      still_un_arr << smallest
      smallest = word
    else
      still_un_arr << word
    end 
  end

  so_arr << smallest
  
  recursive_sort still_un_arr, so_arr
end