class Integer
  def factorial
    raise "Please enter a positive number" if self < 0  
    self <= 1 ? 1 : self * (self-1).factorial                              
  end                                                                      

  def to_roman
    letters = [M,D,C,L,X,VI]            
    values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]            
    romans = letters.zip(values)                           
    if self.between?(1, 3000)                               
      num = self                                            
      c = 0                                                 
      romans.map{|l,v| c, num = num.divmod v; l*c}.join ''  
    end                                                     
  end                                                       

end  

# 3.factorial  
# 4.to_roman