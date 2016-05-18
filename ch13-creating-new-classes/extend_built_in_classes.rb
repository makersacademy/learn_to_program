class Array

  def shuffle
  	length = self.length

	num_array = []
	shuffled_array = []
	shufnum = Random.new
	i = 0

	while i < length do
		new_num = shufnum.rand(0...length)
		if num_array.include?(new_num) == false
			num_array << new_num
			i += 1
		end
	end

	self.length.times.with_index do |x, i|
		shuffled_array << self[num_array[i]] 
	end

	return shuffled_array
  end

end

class Integer
  
  def factorial
  	i = self
	output = self
	if self <= 1 then return 1
	else
		while i > 1 do
			output = output*(i-1)
			i -= 1
		end
	end
	return output	
  end

def to_roman
	input = self.to_s.split(//)
	output = ""
	if input.length >= 4
		((self/1000).abs).times do
			output << "M"
		end
	end
	if ((self/500).abs).odd? && input.length >= 3
		output << "D"
	end
	if input.length >= 3 && input[input.length-3].to_i >= 6
		(input[input.length-3].to_i-5).times do
			output << "C"
		end
	elsif input.length >= 3 && input[input.length-3].to_i <= 4
		input[input.length-3].to_i.times do
                        output << "C"
                end
	end
	if input.length >= 2 && ((self/50).abs).odd?
                output << "L"
	end
	if input.length >= 2 && input[input.length-2].to_i >= 6
                (input[input.length-2].to_i-5).times do
			 output << "X"
		end
        elsif input.length >= 2 && input[input.length-2].to_i <= 4
                input[input.length-2].to_i.times do
			output << "X"
        	end
	end
	if input.length >= 1 && (self/5).odd?
                output << "V"
        end
	if input.length >= 1 && input[input.length-1].to_i >= 6
                (input[input.length-1].to_i-5).times do
			output << "I"
        	end
	elsif input.length >= 1 && input[input.length-1].to_i <= 4
               input[input.length-1].to_i.times do
			output << "I"
        	end
	end
	return output
end

end




