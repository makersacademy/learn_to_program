def dictionary_sort arr

    unsorted = arr
    sorted = []

    while unsorted.empty? == false
      unsorted.each do |element|
        if unsorted.any? {|comparison| comparison.downcase < element.downcase } == false
        sorted << element
        unsorted.delete_at(unsorted.index(element))
        else
        end
      end
    break if unsorted.empty?
    end
    return sorted
  end
