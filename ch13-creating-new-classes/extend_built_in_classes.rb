class Array
  def shuffle

   recursive_shuffle(self,[])

  end

  def recursive_shuffle(unsorted, shuffled_array)


	until unsorted == []
	 aL = unsorted.length - 1 
	 random = rand(0..aL)
	 shuffled_array << unsorted[random]
	 unsorted.delete_at(random)
	 
	end

 shuffled_array 
end
end

class Integer

	def factorial
		(2..self).inject(1) {|total,element| total * element}
	end


def to_roman

num = self

rString = ""

romanz = [["M", 1000],["D", 500], ["C", 100], ["L", 50], ["X", 10],["V", 5],["I", 1]]

romanz.each_with_index do | x , i |
	if num / romanz[i][1] >= 1 
	
	rString << romanz[i][0] * (num / romanz[i][1])
	
	num = num % romanz[i][1]
	end
   num
end

return rString

end

end
#puts 4.to_roman
#puts 6.factorial

#puts [1,2,3,4].shuffle