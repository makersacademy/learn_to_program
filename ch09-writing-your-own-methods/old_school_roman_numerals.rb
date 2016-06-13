def old_roman_numeral num
  # your code here
  numM = num / 1000
  numMr = num % 1000
  numd =  numMr / 500
  numdr= numMr % 500
  numc = numdr / 100
  numcr = numdr % 100
  numL = numcr / 50
  numLr = numcr % 50
  numx = numLr / 10
  numxr = numLr % 10
  numv = numxr / 5
  numvr = numxr % 5
  numi = numvr / 1
  numir = numvr % 1
  totalm = numM
  totald = numd
  totalc = numc
  totalL = numL
  totalx = numx
  totalv = numv
  totali = numi 
  return 'M' * totalm.to_i + 'D'  * totald.to_i + 'C' * totalc.to_i + 'L' * totalL.to_i + 'X' * totalx.to_i + 'V' * totalv.to_i + 'I' * totali.to_i
end

