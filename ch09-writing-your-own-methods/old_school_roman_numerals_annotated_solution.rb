def old_roman_numeral num

  letters = %w[ M     D    C    L   X   V  I ]
  # %w is a notation to write an array of strings
  # separated by SPACES instead of commas and
  # WITHOUT quotes around them.  So together, the
  # above returns the immediately below array:
  # => [M D C L X V I]
  # rather than
  # => ["M", "D, "C", "L", "X", "V", "I"]
  # The resulting array [M D C L X V I] is then
  # assigned to the variable "letters".
  #
  values  =   [ 1000, 500, 100, 50, 10, 5, 1 ]
  # new array of integers corresponding to each
  # unit in old school roman numerals, which is
  # assigned to the variable "values".
  #
  romans = letters.zip(values)
  # .zip combines the two letters array and the values
  # array into an array of subarrays (a two dimensional
  # array).  This returns:
  # => [["M", 1000], ["D", 500], ["C", 100], ["L", 50],
  #    ["X", 10], ["V", 5], ["I", 1]]
  #
  if num.between?(1, 3000)
  # Checks if num between 1 and 3000 and, if so,
  # executes below code
    c = 0
  # Sets c variable to 0, which we will use to store
  # the count.
  #
    romans.map{|l,v| c, num = num.divmod v; l*c}.join ''
  #
  # This piece of code is tricky to explain, but here
  # goes:
  #
  # romans.map
  #
  # Executes the block of code once for each
  # element in the romans array. This block takes two
  # arguments, a letter ('l') and a value ("v").  So the
  # first element in the romans array is ["M", 1000].
  #
  # c, num = num.divmod v;
  #
  # divmod returns an array containing the quotient (the
  # answer after you divide one number by another) and
  # modulus (the remainder). The first number on the left
  # of divmod is divided by the second number on the right
  # of divmod. If the second number is larger than the
  # first the second number gets returned e.g.
  #
  # => 10.divmod 1000 == 10/1000, which = 0.01
  # => 10.divmod 1000 => [0, 10]
  #
  # Element 0 in this array tells us that 1000
  # goes into 10 a total of 0 times. The second value
  # simply returns the second number, and tells us the
  # first number could not be divided by the second number
  # without returning a decimal quotient, i.e. 0.01 in
  # this case.
  #
  # c, num =
  #
  # This is multiple assignment.  This means whatever the
  # first value after = is will be assigned to c and the
  # second value after = will be assigned to num. So,
  # continuing the above example:
  #
  # => c, num = num.divmod v;
  # => c, num = 10.divmod 1000;
  # => c, num = [0, 10]
  # => c = 0
  # => num = 10
  #
  # l*c
  #
  # Takes the value of c and uses it to multiply the
  # current l for the array element in the current
  # iteration of the block, so, continuing the above
  # example "l" would be "M" therefore:
  #
  # => l*c => "M" * l = ""
  #
  # So in other words unless the num can be divided by
  # romans[v] without remainder c will be 0.  If num can
  # be divided by romans[v] without remainder c will be
  # equal to 1 and will mean the program adds the
  # corresponding roman numeral to the string it
  # ultimately returns.
  #
  end

end