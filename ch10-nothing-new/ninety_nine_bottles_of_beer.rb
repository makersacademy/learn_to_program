# write out a better version of your earlier program that prints the lyrics to 99 bottles of beer on the wall'



def btl_number number

  if number == 0
    return 'no'
  end

  num_btls = '' # this is the string that we will return

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12]]

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write*zil_base

    if write > 0
      prefix = btl_number write
      num_btls = num_btls + prefix + ' ' + zil_name

      if left > 0
        num_btls += ' '
      end

    end

  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) && (left > 0))
      num_btls += teenagers[left-1]
      left = 0
    else
      num_btls += tens_place[write-1]
    end

    if left > 0
      num_btls += '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_btls += ones_place[write-1]
  end

  num_btls
end



first_num = 9999
current_num = first_num

btl_number first_num

until current_num == 2
  puts "#{current_num.to_s.capitalize} bottles of beer on the wall, #{current_num.to_s} bottles of beer!"
  current_num = current_num - 1
  puts "Take one down, pass it around, there's #{current_num.to_s} bottles of beer on the wall!"
end

puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, there's 1 bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, there's no more bottles of beer on the wall!"
