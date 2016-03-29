class Integer
  def factorial
    return "You can't take the factorial of a negative number!" if self < 0
    return self <= 1 ? 1 : self * (self-1).factorial
  end

  def to_roman
   # your code here
  roman_num = ""
    roman_num << "M" * (self/1000)
    roman_num << "D" * ((self%1000)/500)
  roman_num << "C" * (((self%1000)%500)/100)
   roman_num << "L" * ((((self%1000)%500)%100)/50)
   roman_num << "X" * (((((self%1000)%500)%100)%50)/10)
   roman_num << "V" * ((((((self%1000)%500)%100)%50)%10)/5)
   roman_num << "I" * (((((((self%1000)%500)%100)%50)%10)%5)/1)
   roman_num
 end
end
