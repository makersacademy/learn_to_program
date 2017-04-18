def old_roman_numeral num

    string = ""

    m = (num / 1000)
    d = ((num % 1000) / 500)
    c = ((num % 500) / 100)
    l = ((num % 100) / 50)
    x = ((num % 50) / 10)
    v = ((num % 10) / 5)
    i = ((num % 5) / 1)

    m.times {|x| string << 'M'}
    d.times {|x| string << 'D'}
    c.times {|x| string << 'C'}
    l.times {|x| string << 'L'}
    x.times {|x| string << 'X'}
    v.times {|x| string << 'V'}
    i.times {|x| string << 'I'}

    string

end