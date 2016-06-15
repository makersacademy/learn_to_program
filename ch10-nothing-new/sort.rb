def sort (array)
return array if array.length <= 1

middle = array.pop
less = array.select{|x| x < middle}
more = array.select{|x| x >= middle}

return sort(less) + [middle] + sort(more)
end
