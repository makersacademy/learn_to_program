class Integer

  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end

  def to_roman 
 values = [["M", 1000], ["D", 500], 
          ["C", 100], ["L", 50], ["X", 10], 
          ["V", 5], ["I", 1]]
          #since we need every different value in order to have num = num % values below working

  roman = ""
  num = self #so we don't need a parameter for to_roman method, thus
  			 # it can be call like 5.to_roman
values.each do |letter, value|
  roman << letter *(num / value) #as long as num/value is an integer, the resul of letter *(num/value) will be o so
  num = num % value    		     # nothing will be added to roman

end
roman
end
end