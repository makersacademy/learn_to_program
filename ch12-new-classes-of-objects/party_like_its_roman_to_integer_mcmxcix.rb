def roman_to_integer(roman)
  # your code here
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end

# puts(roman_to_integer('mcmxcix'))
# puts(roman_to_integer('CCCLXV'))

=begin
USING roman("MCMXCIX") AS AN EXAMPLE.
------------------------------------------------------
total = 0, prev = 0
index = "MCMXCIX".length - 1    -> length = 7 - 1 = 6
index = 6
# LINE 13 > index is >= 0 so go through the loop.
c = "MCMXCIX"[6].downcase       -> "MCMXCIx"
index = 6 - 1 = 5
index = 5
val = digit_vals[x]             -> 10
val is GREATER than prev.
prev = 10
total = 0 + 10                  -> 10
------------------------------------------------------
total = 10, prev = 10, index = 5
# LINE 13 > index is >= 0 so go through the loop.
c = "MCMXCIx"[5].downcase       -> "MCMXCix"
index = 5 - 1 = 4
index = 4
val = digit_vals[i]             -> 1
val is SMALLER than prev
val = 1 * -1                    -> -1
total = 10 - 1                  -> 9
------------------------------------------------------
total = 9, prev = 10, index = 4
# LINE 13 > index is >= 0 so go through the loop.
c = "MCMXCix"[4].downcase       -> "MCMXcix"
index = 4 - 1 = 3
index = 3
val = digit_vals[c]             -> 100
val is GREATER than prev.
prev = 100
total = 9 + 100                  -> 109
------------------------------------------------------
total = 109, prev = 100, index = 3
# LINE 13 > index is >= 0 so go through the loop.
c = "MCMXcix"[3].downcase       -> "MCMxcix"
index = 3 - 1 = 2
index = 2
val = digit_vals[x]             -> 10
val is SMALLER than prev
val = 10 * -1                    -> -10
total = 109 - 10                  -> 99
------------------------------------------------------
total = 99, prev = 100, index = 2
# LINE 13 > index is >= 0 so go through the loop.
c = "MCMxcix"[2].downcase       -> "MCmxcix"
index = 2 - 1 = 1
index = 1
val = digit_vals[m]             -> 1000
val is GREATER than prev.
prev = 1000
total = 109 + 1000                  -> 1009
------------------------------------------------------
total = 1009, prev = 1000, index = 1
# LINE 13 > index is >= 0 so go through the loop.
c = "MCmxcix"[1].downcase       -> "Mcmxcix"
index = 1 - 1 = 0
index = 0
val = digit_vals[c]             -> 100
val is SMALLER than prev
val = 100 * -1                    -> -100
total = 1009 - 100                  -> 999
------------------------------------------------------
total = 999, prev = 1000, index = 0
# LINE 13 > index is >= 0 so go through the loop.
c = "Mcmxcix"[0].downcase       -> "mcmxcix"
index = 0 - 1 = -1
index = -1
val = digit_vals[m]             -> 1000
val = prev
total = 999 + 1000 = 1999
------------------------------------------------------
total = 1999, prev = 1000, index = -1
# LINE 13 > index is NOT >= 0 so SKIP the loop.
Return total = 1999.
=end