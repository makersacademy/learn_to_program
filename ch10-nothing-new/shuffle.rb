def shuffle array
rec_meth(array, [])
end

def rec_meth(array,shuffled)
  if array == []
    return shuffled
  end
  shuffled << array.delete_at(array.index(array.0))
  rec_meth(array,shuffled)
end