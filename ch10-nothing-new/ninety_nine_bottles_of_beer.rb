def english_number (number)
  tens = ["Ten","Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
  ones = ["one","two","three","four","five","six","seven","eight","nine"]
  teens = ["Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
  illions = ["thousand","million","billion","trillion","quadrillion","quintillion","sextillion","septillion","octillion","nonillion","decillion",
              "undecillion","duodecillion","tredecillion","quattuordecillion","quindecillion","sexdecillion","septendicillion","octodecillion",
              "novemdecillion","vigintillion"]
  writnum = ""
  return "zero" if number == 0
  # illions
  left = number
x = 66
y=illions.size-1
while x > 3
    x -= 3
    write = left / (10 ** x)
    left -= write * (10 ** x)
    writnum << "#{english_number(write)} #{illions[y]}" if write > 0
    writnum << " " if left > 0 && write > 0
    y -= 1
end

  # hundreds
  write = left/100
  left -= write*100
  writnum << "#{english_number(write)} hundred" if write > 0
  writnum << " " if left > 0 && write > 0
  # tens
  write = left/10
  left -= write*10
  if write > 0
    if write == 1 && left > 0
      writnum << teens[left - 1]
      left = 0
    else
      writnum << tens[write - 1]
    end
    writnum << "-" if left > 0
  end

  # ones
  write = left
  left = 0
  writnum << ones[write - 1] if write > 0

writnum.downcase
end

def beer(number)
  if number > 0
  number == 1 ? plural = "bottle" : plural = "bottles"
  beernum = english_number(number)
  nextbeer = english_number(number - 1)
  puts "#{beernum} #{plural} of beer on the wall"
  puts "#{beernum} #{plural} of beer"
  puts "take one down, pass it around"
  number - 1 == 1 ? plural = "bottle" : plural = "bottles"
  puts "#{nextbeer} #{plural} of beer on the wall\n\n"
  number -= 1
  beer(number)
end
end


puts beer 2000
