def sort initial
  recursive_sort initial, [] # wrapper method for recursive_sort
end

def recursive_sort unsorted, sorted
  return sorted if unsorted == []

  smallest = unsorted.shift # takes first item for comparison
  remaining = []

  unsorted.each do |item| # iterates through remaining items in initial array
    if item < smallest
      remaining << smallest # if we find one that's smaller, add original 'smallest' to remaining array
      smallest = item # then reassign smallest as this smaller item
    else
      remaining << item
    end
  end
# at this point, we've found and removed our smallest item
  sorted << smallest # add smallest item to sorted array
  recursive_sort remaining, sorted # repeat with remaining items
end
