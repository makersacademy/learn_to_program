
class Integer
  def factorial 
    num = self 
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end

  def to_roman
    num = self
    roman = {one: "I", five: "V", ten: "X", fifty: "L", hunds: "C", fivehund: "D", thous: "M"}
    result = ''
 
    thous = (num / 1000)
    fivehund = (num % 1000 / 500)
    hunds = (num % 500  / 100)
    fifty = (num % 100   / 50)
    ten =   (num % 50    / 10)
    five =  (num % 10    / 5)
    one =   (num % 5     / 1)

    result << roman[:thous]    * thous 
    result << roman[:fivehund] * fivehund  
    result << roman[:hunds]    * hunds 
    result << roman[:fifty]    * fifty  
    result << roman[:ten]      * ten  
    result << roman[:five]     * five  
    result <<  roman[:one]      * one
    result


  end  
end


