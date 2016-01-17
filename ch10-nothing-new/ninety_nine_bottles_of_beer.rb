# your code here

class BeerSong
attr_accessor :bottles
	def initialize(bottles)
		self.bottles = bottles
		
	end
def numbertotext(bottles)
		#if l divided by 10 is zero. we know its a single digit number (2/10 = 0.05 ==> 0)
		array_1 = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
		array_2 = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		array_3 = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
		zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]



  # "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it?  :)
left = bottles
#trillionleft = number
 while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = numbertotext write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
end



 
		if bottles / 10 == 0 
				

				translate = array_1[bottles]	
		#if l divided by 10 is more than zero, we know its a double digit number (20/10 = 2 ==> 2) and if the remainder of dividing by 
		#by ten is zero we know its a decade.	
		elsif bottles / 10 > 0 && bottles % 10 == 0
				
				#we want to select that correspending array value for l. So the equation in the parenthesis reduces l to its corresponding
				#array index. (eg. l = 20; (20/10)-1 => 1 ..its corresponding array index.
				translate = array_2[(bottles/10)-1]	
		#if l divided by 10 is equal to one, we know its a tens number (11/10 = 1.1 ==> 1) and if the remainder of dividing by 
		#by ten is not a zero, we know its a teens number.	
		elsif bottles / 10 == 1 && bottles % 10 != 0
				
				#we want to select that correspending array value for l. So the equation in the parenthesis reduces l to its corresponding
				#array index. (eg. l = 16; (16%10)-1 => 5 ..its corresponding array index.
				translate = array_3[(bottles%10)-1]

		#if l is greater than 20 and if the remainder of dividing by ten is not a zero, l is a double digit, combined number of a decade 
		#and a single number
		elsif bottles > 20 && bottles % 10 != 0
				translate = "#{array_2[(bottles/10)-1]}" + "-" + "#{array_1[(bottles%10)].downcase}"
		end
translate
end	

def bottle_s(bottles)
	if bottles == 1 
	"bottle" 
	else
	"bottles"	
	end
end
	
def print_song

		
		bottles.downto(1) do |bottles| 
if bottles > 9999
print"#{numbertotext(bottles)} #{bottle_s(bottles)} of beer on the wall,
#{numbertotext(bottles)} #{bottle_s(bottles)} of beer,
Take one down, pass it around,
#{numbertotext(bottles-1)} #{bottle_s(bottles-1)} of beer on the wall.
"
end
end
end
