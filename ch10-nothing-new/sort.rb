def sort arr
  it_is_already_sorted = true
  arr[0..-2].each_with_index do |item, index|
    if arr[index] > arr[index+1]
      it_is_already_sorted = false
      arr[index], arr[index+1] = arr[index+1], arr[index]
    end
  end
  sort arr unless it_is_already_sorted
  arr
end