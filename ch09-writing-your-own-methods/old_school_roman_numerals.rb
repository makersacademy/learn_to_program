def old_roman_numeral(number)

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
