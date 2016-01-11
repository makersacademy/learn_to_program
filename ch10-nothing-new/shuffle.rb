def shuffle arr
 a = arr.sort_by{rand}
 count = 0
while count < arr.size
  arr.zip(a).each do |array1_var, array2_var|
     if array1_var == array2_var
         a = arr.sort_by{rand}
         count = 0
     else
         count += 1
     end
  end
end
return a
end

