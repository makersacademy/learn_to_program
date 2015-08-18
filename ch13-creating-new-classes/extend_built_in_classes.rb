class Integer
  def to_roman

    m = self/1000
    r1 = self%1000
    cm = r1/900
    r2 = r1%900
    d = r2/500
    r3 = r2%500
    cd = r3/400
    r4 = r3%400
    c = r4/100
    r5 = r4%100
    xc = r5/90
    r6 = r5%90
    l = r6/50
    r7 = r6%50
    xl = r7/40
    r8 = r7%40
    x = r8/10
    r9 = r8%10
    ix = r9/9
    r10 = r9%9
    v = r10/5
    r11 = r10%5
    iv = r11/4
    i = r11%4

    puts ("M"*m)+("CM"*cm)+("D"*d)+("CD"*cd)+("C"*c)+("XC"*xc)+("L"*l)+("XL"*xl)+("X"*x)+("IX"*ix)+("V"*v)+("IV"*iv)+("I"*i)


  end
end

puts 1999.to_roman
