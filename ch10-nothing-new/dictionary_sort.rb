def dictionary_sort arr
  return [] if arr.length == 0                                   # => false, false, true, true, false, false, true, true, false, false, true, true, true
  pivot = arr.shift                                              # => "can", "a", "feel", "Can", "singing", "like"
  less, more = arr.partition {|e| e.downcase < pivot.downcase }  # => [["a"], ["feel", "singing", "like", "Can"]], [[], []], [["Can"], ["singing", "like"]], [[], []], [["like"], []], [[], []]
  dictionary_sort(less) + [pivot] + dictionary_sort(more)        # => ["a"], ["Can"], ["like"], ["like", "singing"], ["Can", "feel", "like", "singing"], ["a", "can", "Can", "feel", "like", "singing"]
end                                                              # => :dictionary_sort

puts(dictionary_sort(['can', 'feel', 'singing', 'like', 'a', 'Can']).join(' '))  # => nil

# >> a can Can feel like singing
