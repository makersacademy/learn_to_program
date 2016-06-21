class Integer
  def to_roman
  	roman_nr = ''
  	num = self

	how_many = num / 1000 #how many thousends are in num
	roman_nr = roman_nr + ("M" * how_many) #gives "M" for every thousend
	num = num - how_many * 1000 #substracts thousends

	how_many = num / 500 
	roman_nr = roman_nr + ("D" * how_many) 
	num = num - how_many * 500 

	how_many = num / 100 
	roman_nr = roman_nr + ("C" * how_many) 
	num = num - how_many * 100 

	how_many = num / 50 
	roman_nr = roman_nr + ("L" * how_many) 
	num = num - how_many * 50

	how_many = num / 10 
	roman_nr = roman_nr + ("X" * how_many) 
	num = num - how_many * 10 

	how_many = num / 5
	roman_nr = roman_nr + ("V" * how_many) 
	num = num - how_many * 5

	how_many = num / 1
	roman_nr = roman_nr + ("I" * how_many) 

	roman_nr
	end

	def factorial
		if self <= 1
			1
		else
			self * (self-1).factorial
		end
	end
end

class Array
	def shuffle
  		self.sort_by{rand}
	end
end