class Integer
  def factorial
    n = self
    #n < 2 ? 1 : factorial(n-1) * n
    n < 2 ? 1 : (n-1).factorial * n         #Now a mthod of the class integer.
  end  
    
end

#testfact = Integer.new 8         #Don't need this as automatically added???
print 8.factorial

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
 