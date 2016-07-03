def dictionary_sort array
return array if array.size <=1

middle = array.pop
less = array.select{|x| x.downcase < middle.downcase}
more = array.select{|x| x.downcase >= middle.downcase}
#.downcase to the x as well as the middle! 

dictionary_sort(less) + [middle] + dictionary_sort(more)

end 