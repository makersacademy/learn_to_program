#!/usr/bin/env ruby

def dictionary_sort arr
	temp_array = []	
	return sorter(arr, temp_array)
  #make this a wrapper for sort
end

def sorter array, temp_array
	
	temp_array=array
	
   	l=temp_array.length
	
	for i in 1..(l-1)
		strA=array[i-1]
		strB=array[i] 
		if strA > strB 	
			puts "#{strA} > #{strB}" 
			array[i]=strA
			array[i-1]=strB
				
		end
	end
end      

#for (int j = i; j > 0; j--)
#         if (a[j-1].compareTo(a[j]) > 0)
#             exch(a, j, j-1);
#         else break; 


#	#iterate through array, with index
#	array.each_with_index{|value, i|
#	array_compare(array, value, temp_array)
#	

#	}
#	
#		
#		
#		
#	return array
#end


#general logic:

##separate into 2 ARRAYS -> higher & lower
## apply recursion


#def array_compare array, word, temp_array
#	array.each{|value|
#	if value.downcase<word.downcase
#		
#		puts "#{word} is higher than #{value}"
#		#return new word & recurse
#		return 
#	elsif	value.downcase>word.downcase
#		#want this to put value into temp array	
#		puts "#{word} is lower than #{value}"
#		return 
#		#return new word & recurse
#	else
#		puts "#{word} is equal to #{value}"	
#		break
#	end
#	}
#end



#def  sort(String[] a) {
#   int N = a.length;
#   for (int i = 1; i < N; i++)
#      for (int j = i; j > 0; j--)
#         if (a[j-1].compareTo(a[j]) > 0)
#             exch(a, j, j-1);
#         else break;
#}






my_array=['on', 'the', 'first', 'day']

puts my_array[2]
puts my_sort=dictionary_sort(my_array)
puts ruby_sort=my_array.sort

#Test for if it's worked
if my_sort==ruby_sort
	puts 'WIN!'
else
	puts 'You fail'
end
