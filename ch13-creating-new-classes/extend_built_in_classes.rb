class Integer
	def factorial
		return [*1..self].inject(:*)
	end
	
	def to_roman

		return "Enter a valid number" if self < 0 
			
			out=''	
			out<<"M"*self.divmod(1000)[0]
			out<<"D"*(self % 1000).divmod(500)[0]
			out<<"C"*(self % 500).divmod(100)[0]
			out<<"L"*(self % 100).divmod(50)[0]
			out<<"X"*(self % 50).divmod(10)[0]
			out<<"V"*(self % 10).divmod(5)[0]
			out<<"I"*(self % 5).divmod(1)[0]

		return out
	end

end