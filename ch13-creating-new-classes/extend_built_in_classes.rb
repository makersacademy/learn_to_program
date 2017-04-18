class Integer
  def factorial
    raise "You can't take the factorial of a negative number" if self < 0  # => nil, nil, nil
    self <= 1 ? 1 : self * (self-1).factorial                              # => 1, 2, 6
  end                                                                      # => :factorial

  def to_roman
    letters = %w[ M     D    C    L   X   V  I ]            # => ["M", "D", "C", "L", "X", "V", "I"]
    values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]            # => [1000, 500, 100, 50, 10, 5, 1]
    romans = letters.zip(values)                            # => [["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]]
    if self.between?(1, 3000)                               # => true
      num = self                                            # => 4
      c = 0                                                 # => 0
      romans.map{|l,v| c, num = num.divmod v; l*c}.join ''  # => "IIII"
    end                                                     # => "IIII"
  end                                                       # => :to_roman

end  # => :to_roman

3.factorial  # => 6
4.to_roman   # => "IIII"
