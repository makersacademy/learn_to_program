class Integer
 def factorial
        if self <= 1
          1
        else
          self * (self-1).factorial
        end
  end


  def to_roman
        number = ''
        number = number + 'M' * (self / 1000)
        number = number + 'D' * (self % 1000 / 500)
        number = number + 'C' * (self % 500 / 100)
        number = number + 'L' * (self % 100 / 50)
        number = number + 'X' * (self % 50 / 10)
        number = number + 'V' * (self % 10 / 5)
        number = number + 'I' * (self % 5 / 1)
      
end

end


puts 7.factorial
puts 73.to_roman