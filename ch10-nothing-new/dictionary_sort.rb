def dictionary_sort(array)
  return array if array.length <= 1  # => false, false, false, false, true, true, true, true, true

  middle = array.pop                                         # => "singing", "like", "feel", "can"
  less = array.select { |x| x.downcase < middle.downcase }   # => ["A", "can", "can", "feel", "like"], ["A", "can", "can", "feel"], ["A", "can", "can"], ["A"]
  more = array.select { |x| x.downcase >= middle.downcase }  # => [], [], [], ["can"]

  dictionary_sort(less) + [middle] + dictionary_sort(more)  # => ["A", "can", "can"], ["A", "can", "can", "feel"], ["A", "can", "can", "feel", "like"], ["A", "can", "can", "feel", "like", "singing"]
end                                   # => :sort
