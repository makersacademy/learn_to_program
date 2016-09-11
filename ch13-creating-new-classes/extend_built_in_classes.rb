class Integer # in the class Integer add a new method
	def factorial # factorial method
		if self <= 1 # self refers to the object. Which is in this case an integer
				1
			else
				self * (self-1).factorial # it then takes the object and multiplies it by
		end # by it's self-1 and then calls the function again repeating the process with
	end
end

