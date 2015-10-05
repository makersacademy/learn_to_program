# Looked up the answer but below is my attempt to write code from memory (with occasional reference) rather than copying
def sort array
  recursive_sort array, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each { |object|
    if object < smallest
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
       }
  sorted.push smallest
  recursive_sort still_unsorted, sorted
end