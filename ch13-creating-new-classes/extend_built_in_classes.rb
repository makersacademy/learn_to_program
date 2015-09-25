class Array
  def shuffle
    unsorted = self; shuffled = []
    (self.length-1).times { shuffled << unsorted.delete_at(rand(0...self.length)) }   
  shuffled  
  end														
end

# puts [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 21, 21].shuffle

class Integer
  def factorial
    num = self; factorial = 1;
    num == 0 ? factorial : 
      if num < 0 then print "Error(negative): undefined"
      else
        while num > 0
          factorial *= num
          num -= 1
        end
        factorial
      end
  end
  
  def to_roman
    number = self
    m = number / 1000
    mleft = number % 1000
    d = mleft / 500
    dleft = mleft % 500
    c = dleft / 100
    cleft = dleft % 100
    l = cleft / 50
    lleft = cleft % 50
    x = lleft / 10
    xleft = lleft % 10
    v = xleft / 5
    vleft = xleft % 5
    i = vleft
  
    return "#{'M'*m}#{'D'*d}#{'C'*c}#{'L'*l}#{'X'*x}#{'V'*v}#{'I'*i}"
  end
end
