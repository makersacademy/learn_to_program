def sort array
sorted_array = []
while array.empty? == false
sorted_array << array.min
array.delete_at array.index(array.min) 
#array.delete_at array.min.index no funciona si hay repetidos
end
return sorted_array
end

