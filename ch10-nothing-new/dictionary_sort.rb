def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest       = unsorted.pop
  still_unsorted = []

  unsorted.each do |item|
    if item.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = item
    else
      still_unsorted.push item
    end
  end

  sorted.push smallest
  rec_sort still_unsorted, sorted
end

# puts(sort(['Foxtrot', 'hotel', 'bravo', 'Golf', 'charlie', 'delta', 'Alpha', 'echo']).join(' '))
