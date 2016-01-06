def sort arr
  plain_old_sort arr, []
end


def plain_old_sort unsorted, sorted

  while unsorted.empty? == false
    unsorted.each do |element|
      if unsorted.any? {|comparison| comparison < element } == false
      sorted << element
      unsorted.delete_at(unsorted.index(element))
      else
      end
    end
  break if unsorted.empty?
  end
  return sorted
end
