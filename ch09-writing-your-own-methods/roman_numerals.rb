def roman_numeral num
  # your code here


thous = num / 1000

remain = num % 1000

funfhunds = remain / 500

remain = remain % 500

hunds = remain / 100

remain = remain % 100

funfzig = remain /50

remain = remain % 50

zehn = remain /10

remain = remain %10

nuen = remain /9
remain = remain % 9

funf = remain / 5
remain = remain % 5
vier = remain /4
remain = remain % 4

eins = remain


return "#{"M" * thous}#{"D" * funfhunds}#{"C" * hunds}#{"L" * funfzig}#{"X" * zehn}#{"IX" * nuen}#{"V" * funf}#{"IV"*vier}#{"I" * eins}" 
end
