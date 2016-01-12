def sort arr
  recursive_sort arr, []
end


# def plain_old_sort unsorted, sorted
#
#   while unsorted.empty? == false
#     unsorted.each do |element|
#       if unsorted.any? {|comparison| comparison < element } == false
#       sorted << element
#       unsorted.delete_at(unsorted.index(element))
#       else
#       end
#     end
#   break if unsorted.empty?
#   end
#   return sorted
# end

def recursive_sort unsorted, sorted

  if unsorted.empty? == true
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test|
    if test < smallest
      still_unsorted.push smallest
      smallest = test
    else
      still_unsorted.push test
    end
  end

  sorted.push smallest

  recursive_sort still_unsorted, sorted

end
