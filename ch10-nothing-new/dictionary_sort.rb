def dictionary_sort(arr)
   
   return arr if arr.length <= 0

   test = arr.pop
   least = arr.select {|x| x.downcase < test.downcase}
   most = arr.select {|x|  x.downcase >= test.downcase}

dictionary_sort(least)  + [test] +  dictionary_sort(most)

end



#print dictionary_sort(('A can can feel like singing.').split(' '))

#print dictSort(["How","now","Brown","Cow"])