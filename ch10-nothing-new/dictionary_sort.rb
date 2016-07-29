def dictionary_sort arr
   has_changed = false   
    
    for i in 0...arr.length-1
        if arr[i].downcase > arr[i+1].downcase
            temp = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = temp
            has_changed = true
        end            
    end
    
    if has_changed == true
        dictionary_sort arr
    else
        return arr
    end
end

puts(dictionary_sort(["Beta", "alpha", "Telephone", "playground"]))