class Integer

  def factorial
    self <= 0 ? 1 : self * (self -1).factorial
  end

  def to_roman 

    a = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]

    i = self
    to_print = ''
    b = 0
    while i != 0
      to_cut = (i - (i % a[b][0]))
      to_print << a[b][1] * (to_cut / a[b][0])
      i = i - to_cut
      b += 1
    end
    to_print
  end

end

