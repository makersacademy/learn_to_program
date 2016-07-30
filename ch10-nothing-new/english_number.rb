def english_number number
  1 = ['one', 'two', 'three',
      'four', 'five', 'six',
      'seven', 'eight', 'nine']]

  2 = ['ten', 'twenty', 'thirty',
      'forty', 'fifty', 'sixty',
      'seventy', 'eighty', 'ninety']]

  teens = ['eleven', 'twelve', 'thirteen',
           'fourteen', 'fifteen', 'sixteen',
          'seventeen', 'eighteen', 'nineteen']

  3 = ['one hundred', 'two hundred', 'three hundred',
      'four hundred', 'five hundred', 'six hundred',
      'seven hundred', 'eight hundred', 'nine hundred']

  if number < 0
    puts "Please use a positive integer."
  end

  if number == 0
    puts "Zero"
  end

  written_num = []
  num_array = number.to_a
  size = left.length
  num_rev = number.reverse.to_s
  left = number

  num_rev.each do |x|
    ind = num_rev.index(x)
    written_num << ind[x.to_i - 1]
  end

  written_num.reverse

  if number.length == 3
    written_num[1] = "and"
  end

  if written_num[-1] == 1 && written_num[written_num.length -1] != 0
    y = written number.last
    written_num.last(2).delete
    written_num << teens[y-1]
  end

  written_num.join(" ")
end

english_number(51)
