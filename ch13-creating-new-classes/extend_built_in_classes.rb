class Integer
  def factorial
    recursive_fact self
  end

  def recursive_fact n
    n == 1 ? 1 : n * recursive_fact(n-1) 
  end

 def to_roman 
   base_5_convert(self.to_s[-4].to_i, 'M', '_', ) +
   base_5_convert(self.to_s[-3].to_i, 'C', 'D', ) +
   base_5_convert(self.to_s[-2].to_i, 'X', 'L', ) +
   base_5_convert(self.to_s[-1].to_i, 'I', 'V', )
 end

 def base_5_convert n, unit, tenth
   base5 = n.to_s(5)
  (tenth * base5[-2].to_i) + (unit * base5[-1].to_i)   
 end 
end
