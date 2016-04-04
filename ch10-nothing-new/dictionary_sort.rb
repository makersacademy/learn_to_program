=begin
This is my attempt at the dictionary sort :( I just couldnt figure it out for some reason
so I looked at the solution
def dictionary_sort arr
  new_arr = []
  arr.each do |test|
  	smaller = nil
  	arr.each do |against|
  		test > against ? smaller = false : smaller = true
  		if smaller == true
  			arr - [test]
  			new_arr<<test
  		end
  	end
  end
  freq = new_arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  sorted_arr = []
  until new_arr == []
  	sorted_arr << new_arr.max_by { |v| freq[v] }
  	new_arr - [(new_arr.max_by { |v| freq[v] })]
  end
  print sorted_arr
end
=end
def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase} 
  more = arr.select{|x| x.downcase >= middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end

