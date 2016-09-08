def dictionary_sort arr

  num = arr.length

  loop do
    changes = false

    (num-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        changes = true
      end
    end

    break if not changes 
  end

  arr
end
