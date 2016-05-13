#This solution is much longer than the suggested one because the suggested one is wrong.
#Suggested solution does not reject all invalid roman numerals, just ones with invalid individual letters
#For example 'MCCMCCM' is not a valid roman numeral, but the suggested solution will happily tell us it equals 2600

def roman_to_integer roman
  roman.upcase!
  valid_singles = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000}

  valid_pairs = {
  'CM' => 900,
  'XC' => 90,
  'IX' => 9,
  'IV' => 4}

  total = 0

  while roman.length > 1 do
    letter = roman[0]
    next_letter = roman[1]
    #Check if numerals being scanned are still valid
    if !valid_singles.include?(letter) || !valid_singles.include?(next_letter)
    	puts "Invalid numeral entered" 
    	exit
    end

    #Add value of numeral being scanned if >= subsequent numeral and render all higher values invalid
    if valid_singles[letter] >= valid_singles[next_letter]
      total += valid_singles[letter]
      valid_singles.reject!{|k,v| v>valid_singles[letter]}
      roman = roman[1..roman.length]
    #Add value of paired numeral (e.g "IX") if validcat 
    else
      if valid_pairs.include?(letter+next_letter)
      	total += valid_pairs[letter+next_letter]
      	valid_pairs.reject!{|k,v| v>valid_pairs[letter+next_letter]}
      	roman = roman[2..roman.length]
      else
      	puts "Invalid numeral entered" 
    	exit
      end
    end

  end

  #catch last numeral
  if roman.length == 1
    if !valid_singles.include?(roman[0])
      puts "Invalid numeral entered" 
      exit
    end
    total += valid_singles[roman[0]]
  end

  total
end