class Integer
  def factorial

    if self == 0
      return 1
    else
      split = self.downto(1).map {|x| x}
      final = 1
      split.each {|x| final *= x}
      final
    end

  end
end



class Integer
def to_roman_new

  string = ""

  m = (self / 1000)
  d = ((self % 1000) / 500)
  c = ((self % 500) / 100)
  l = ((self % 100) / 50)
  x = ((self % 50) / 10)
  v = ((self % 10) / 5)
  i = ((self % 5) / 1)

  m.times {|x| string << 'M'}
  d.times {|x| string << 'D'}
  c.times {|x| string << 'C'}
  l.times {|x| string << 'L'}
  x.times {|x| string << 'X'}

  if v == 1 && i == 4
    string << 'IX'
  elsif i == 4
    string << 'IV'
  else
    v.times {|x| string << 'V'}
    i.times {|x| string << 'I'}
  end

  string


end
end


class Integer
def to_roman

  string = ""

  m = (self / 1000)
  d = ((self % 1000) / 500)
  c = ((self % 500) / 100)
  l = ((self % 100) / 50)
  x = ((self % 50) / 10)
  v = ((self % 10) / 5)
  i = ((self % 5) / 1)

  m.times {|x| string << 'M'}
  d.times {|x| string << 'D'}
  c.times {|x| string << 'C'}
  l.times {|x| string << 'L'}
  x.times {|x| string << 'X'}
  v.times {|x| string << 'V'}
  i.times {|x| string << 'I'}

  string
end

end
