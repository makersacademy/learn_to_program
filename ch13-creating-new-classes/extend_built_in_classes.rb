class Integer
  def factorial
    n = self
    #n < 2 ? 1 : factorial(n-1) * n
    n < 2 ? 1 : (n-1).factorial * n         #Now a mthod of the class integer.
  end  
  
  def roman
      num = self
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
end


#print 1248.roman;puts
#testfact = Integer.new 8         #Don't need this as a number is automatically added to the Integer class???
#print 9.factorial

class Array
    def shuffle   #Using my shuffle method from before!
      arr = self
      return arr if arr.length == 1        
      shuffledkeys = []
      shuffled = []
      while shuffledkeys.length < arr.length
        shuffledkeys << (0...arr.length).to_a.sample
        if shuffledkeys.length >= 2
            if (shuffledkeys.slice(0,shuffledkeys.length - 1)).include? (shuffledkeys.last)
                shuffledkeys.pop
            end
        end    
      end
      for count in 0...arr.length
        shuffled << arr[shuffledkeys[count]]
      end
      shuffled
    end

end

#testy = Array.new  ["1a","2b","3c","4d","5e","6f","7g","8h","9i","10j","11k","12l"]
#print testy.shuffle 
 