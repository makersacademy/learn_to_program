def modern_roman x

  m = x/1000
  r1 = x%1000
  d = r1/500
  r2 = r1%500
  c = r2/100
  r3 = r2%100
  l = r3/50
  r4 = r3%50
  x = r4/10
  r5 = r4%10
  v = r5/5
  i = r5%5


  puts  ("I"*i)+("X"*x)+("L"*l)+("C"*c)+("D"*d)+("M"*m)


end



puts roman 4861
