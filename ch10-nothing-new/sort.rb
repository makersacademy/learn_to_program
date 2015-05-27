def sort arr
  recursive_sort arr, [ ]
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = [ ]

  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  sorted.push smallest

  recursive_sort still_unsorted, sorted

end

puts(sort(['dog','cat','hamster','Goldfish']))
