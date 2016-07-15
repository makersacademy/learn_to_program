def sort arr
  loop do
    done = true
    (arr.length-1).times do |i|
      if arr[i].downcase > arr[i+1].downcase
        arr[i], arr[i+1] = arr[i+1], arr[i]
        done = false
      end
    end
    break if done
  end
arr
end