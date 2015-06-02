
def sort array
  recursive_sort(array, [])
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

smallest       = unsorted.pop
new_unsorted = []

unsorted.each do |testword|
  # this is the alphabetization, right?
  if testword < smallest
    new_unsorted.push smallest
    smallest = testword
  else
    new_unsorted.push testword
  end
end

sorted.push smallest
recursive_sort new_unsorted, sorted
end

puts(sort(['alpha', 'lima', 'charlie', 'echo', 'zulu', 'alpha', 'echo']))
