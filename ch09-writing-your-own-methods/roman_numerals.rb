=begin
I placed before V or X indicates one less, so four is IV (one less than five) and nine is IX (one less than ten)
X placed before L or C indicates ten less, so forty is XL (ten less than fifty) and ninety is XC (ten less than 
a hundred)
C placed before D or M indicates a hundred less, so four hundred is CD (a hundred less than five hundred) and 
nine hundred is CM (a hundred less than a thousand)[5]
For example, MCMIV is one thousand nine hundred and four, 1904 (M is a thousand, CM is nine hundred and IV is four).
=end

def roman_numeral num
    # I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
    retstr = ""
    m = (num / 1000)                #Integer division so produces 0 if no 1,000's.
    d = ((num % 1000) / 500)
    c = ((num % 500) / 100)
    l = ((num % 100) / 50)
    x = ((num % 50) / 10)
    v = ((num % 10) / 5)
    i = (num % 5)
    
    hunds = ((num % 1000) / 100)
    tens = ((num % 100) / 10)
    units = (num % 10)
    
    retstr += "M"*m 
    if hunds == 9
        retstr += "CM"              #900 Special case
    elsif hunds == 4                #400 Special case      
        retstr += "CD"
    else      
        retstr += + "D"*d + "C"*c   #Use default build of Roman Num for hundreds using C's and D's.
    end
    if tens == 9
        retstr += "XC"              #90 Special case
    elsif tens == 4
        retstr += "XL"              #40 Special case
    else 
        retstr += "L"*l + "X"*x      #Use default build of Roman Num for tens using L's and X's. 
    end
    if units == 9
        retstr += "IX"              #9 Special case
    elsif units == 4
        retstr += "IV"              #4 Special case
    else
        retstr += "V"*v + "I"*i     #Use default build of Roman Num for ones using V's and I's.
    end  
    retstr        
end

#puts roman_numeral 1954