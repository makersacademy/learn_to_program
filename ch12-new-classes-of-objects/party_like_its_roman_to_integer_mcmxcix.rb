def roman_to_integer roman

  romanChars = Hash.new
  romanChars['i'] = 1
  romanChars['v'] = 5
  romanChars['x'] = 10
  romanChars['l'] = 50
  romanChars['c'] = 100
  romanChars['d'] = 500
  romanChars['m'] = 1000
  romanChars['I'] = 1
  romanChars['V'] = 5
  romanChars['X'] = 10
  romanChars['L'] = 50
  romanChars['C'] = 100
  romanChars['D'] = 500
  romanChars['M'] = 1000

  # Let's use an array to handle the Roman numeral, it comes with indexing built in.
  roman = roman.split(//)

  # Initialise total Arabic numeral value
  total = 0

  # First, check only allowed characters are in the array.
  roman.each do |i|
    if !romanChars[i]
      return 'This is not a valid Romman numeral.'
    end
  end

  roman.each_index do |i|

    # Debug
    # puts "Starting index #{i}"

    # Is there a digit before to check for subtraction? Deduct it twice as it will have already been added. (The code is only required to be simple enough to cater for single deducting digits, so IIX is not supported. This is probably OK as that notation is not valid anyway, but note I don't check for it and neither does Chris Pine. See http://www.factmonster.com/ipka/A0769547.html)
    if i > 0

      if (romanChars[ (roman[i - 1] ) ] < romanChars[ roman[i] ] )
        total = total - (2 * romanChars[ (roman[ i - 1] ) ] )
      end

    end

    # Here is where we actally tot up the total.
    # Debug
    # puts "total = #{total}"
    # puts "romanChars = #{romanChars[ (roman[i]) ]}"
    total = total + romanChars[ (roman[i]) ]

  end

total
end

puts roman_to_integer 'MCMXcix'