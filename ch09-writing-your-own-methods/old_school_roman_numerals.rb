def old_roman_numeral num

  roman = {one: "I", five: "V", ten: "X", fifty: "L", hunds: "C", fivehund: "D", thous: "M"}
             
  result = ''
 
  thous = (num / 1000)
  fivehund = (num % 1000 / 500)
  hunds = (num % 500  / 100)
  fifty = (num % 100   / 50)
  ten =   (num % 50    / 10)
  five =  (num % 10    / 5)
  one =   (num % 5     / 1)

=begin
   units = {
  "thous" => (num / 1000), 
  "fivehund" => (num % 1000 / 500),
  "hunds" => (num % 500  / 100),
  "fifty" => (num % 100   / 50),
  "ten" =>   (num % 50    / 10),
  "five" =>  (num % 10    / 5),
  "one" =>   (num % 5     / 1)
  }
=end   


# this code here works
  result << roman[:thous]    * thous 
  result << roman[:fivehund] * fivehund  
  result << roman[:hunds]    * hunds 
  result << roman[:fifty]    * fifty  
  result << roman[:ten]      * ten  
  result << roman[:five]     * five  
  result <<  roman[:one]      * one
  result

 #I am trying to be a bit clever and rather that havign to write the 7 lines above I want to iterate through 
 # the two hashes using the code below.
 

=begin
  units.each do | key, unit |
    unit.times  do result << roman[key] end
  end
=end 

# result
end

