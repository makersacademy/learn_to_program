def roman_to_integer rom
  letters = %w[ M     CM    D     CD    C     XC   L   XL  X   IX  V   IV  I ]  # => ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  values  =   [ 1000, 900,  500,  400,  100,  90,  50, 40, 10, 9,  5,  4,  1 ]  # => [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  romans = letters.zip(values)                                                  # => [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100], ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]
  # Zips the letters and values arrays into a new array of subarrays so that
  # each letter is paired in a subarray with its corresponding integer value,
  # e.g. [["M", 1000], ["CM", 900]... and so on ... ["I", 1]]
  val = rom.upcase                                                              # => "MCMXCIX"
  # Ensures roman numerals passed into the roman_to_integer method are in
  # uppercase so that the below code can systematically query each roman numeral
  # against each item in the romans array.
  @c = 0                                                                        # => 0
  # As the below notes show, the code breaks the roman numeral into its
  # constituent integer units and adds them to the @c variable, which keeps a
  # running total.
  romans.each_with_index do |p, i|                                              # => [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100], ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]
  # Iterates through each subarray in the romans array. "p" stands for each
  # pair of letters/values, i.e. the VALUE stored in each subarray, and "i"
  # stands for the index value of that pair in the romans array. For example,
  # => romans[0] => ["M", 1000]
  # => i = 0 and p = ["M", 1000]
    while val.start_with? p[0]                                                  # => true, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false
  # p[0] grabs the first element in the current subarray from the romans array,
  # e.g. continuing the above example, p[0] grabs element [0] from the
  # ["M", 1000] subarray, which is "M".  The code then says "does the current
  # value of val start with "M"? If so, execute the next line of code".                                                  # => true, false, true, false, false, false, false, true, false, false, false, false, true, false, false, false, false
      val = val.slice(p[0].length, val.length)                                  # => "CMXCIX", "XCIX", "IX", ""
  # p[0] is "M" so p[0].length = 1. Val is still "MCMXCIX" at the first
  # iteration so val.length = 7.  Therefore: val = val.slice(1, 7).  That means
  # SLICE off everything between character [1] and character [7] in "MCMXCIX",
  # which is "CMXCIX" and update val to that value.  So at the end of this step
  # val = "CMXCIX"
      @c += p[1]                                                                # => 1000, 1900, 1990, 1999
  # Adds and updates the @c variable with the value of p[1] at the end of each
  # iteration, e.g. continuing the above example, p[1] grabs element [1] from
  # the ["M", 1000] subarray (aka romans[0]), which is 1000.
    end                                                                         # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
  end                                                                           # => [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100], ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]
  @c                                                                            # => 1999
end                                                                             # => :roman_to_integer

roman_to_integer("mcmxcix")  # => 1999
