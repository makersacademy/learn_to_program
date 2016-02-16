def dictionary_sort arr
  
  arr.length.times do                                                                    #arr.length-1 times should be enough.
    completion_flag = true
    (0..arr.length-2).each do |index|
      arr[index], arr[index+1] = arr[index+1], arr[index] if arr[index].downcase > arr[index+1].downcase
    end
  end
  arr
end