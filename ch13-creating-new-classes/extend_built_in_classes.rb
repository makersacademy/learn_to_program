class Integer
  def factorial
    (1..self).reduce(&:*)
  end
  def to_roman
    num = self
    thousands = num/1000
    hundreds = (num-thousands*1000)/100
    tens = ((num-thousands*1000)-hundreds*100)/10
    units = (((num-thousands*1000)-hundreds*100)-tens*10)
    d = hundreds/5
    c = hundreds-(d*5)
    l = tens/5
    x = tens - (l*5)
    v = units/5
    i = units - (v*5)

  return "M"*thousands + "D"*d +"C"*c +"L"*l +"X"*x +"V"*v +"I"*i
  end
end
