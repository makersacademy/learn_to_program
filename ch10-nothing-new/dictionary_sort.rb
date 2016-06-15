def dictionary_sort array

  return array if array.length <= 1

array.each{|x| x.downcase}

  middle = array.pop
  less = array.select{|x| x < middle}
  more = array.select{|x| x >= middle}

  return dictionary_sort(less) + [middle] + dictionary_sort(more)

end
