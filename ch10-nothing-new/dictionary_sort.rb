def dictionary_sort arr
    sort(arr, [])
  end

  def sort (unsorted, sorted)
    return sorted if unsorted.size <= 0

    small = unsorted.pop
    to_sort = []

    unsorted.each do |x|
      if x.downcase < small.downcase
        to_sort << small
        small = x
      else
        to_sort << x
      end
    end
    
    sorted << small

    sort(to_sort, sorted)
end





