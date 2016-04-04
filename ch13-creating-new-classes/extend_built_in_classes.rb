class Integer
  # your code here
def factorial
   	self.downto(1).reduce(:*)
   end

  def to_roman
  

thous = self / 1000

remain = self % 1000

funfhunds = remain / 500

remain = remain % 500

hunds = remain / 100

remain = remain % 100

funfzig = remain /50

remain = remain % 50

zehn = remain /10

remain = remain %10

funf = remain / 5
remain = remain % 5

eins = remain


return "#{"M" * thous}#{"D" * funfhunds}#{"C" * hunds}#{"L" * funfzig}#{"X" * zehn}#{"V" * funf}#{"I" * eins}" 
end
end

