def english_number number
	if number < 0
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''
	ones_place = ['one', 'two', 'three',
	              'four', 'five', 'six',
	              'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty',
                  'forty', 'fifty', 'sixty',
                  'seventy', 'eighty', 'ninety']
    teenagers  = ['eleven', 'twelve', 'thirteen',
                  'fourteen', 'fifteen', 'sixteen',
                  'seventeen', 'eighteen', 'nineteen']

    powers =[[48, ' quindecillion'],[45, ' quattuordecillion'],[42, ' tredecillion'],[39,' duodecillion'],
             [36, ' undecillion'],[33, ' decillion'],[30, ' nonillion'],[27, ' octillion'],
             [24, ' septillion'],[21, ' sextillion'],[18, ' quintillion'],[15, ' quadrillion'],
             [12, ' trillion'],[9, ' billion'],[6, ' million'],[3, ' thousand'],[2, ' hundred']]
    
    left = number
    powers.each do |power, name| 
        write = left/(10**power)
        left = left - write*(10**power)
        if write > 0 
            ammount = english_number write
            num_string = num_string + ammount + name
            if left > 0
                num_string = num_string + ' '
            end
        end
    end

    write = left/10
    left = left - write*10

    if write > 0
    	if ((write == 1) and (left > 0))
    		num_string = num_string + teenagers[left-1]
    		left = 0
    	else
    		num_string = num_string + tens_place[write-1]
    	end

    	if left > 0
    		num_string = num_string + '-'
    	end
    end

    write = left
    left = 0

    if write > 0
    	num_string = num_string + ones_place[write-1]
    end

    num_string
end

def bottles_of_beer number
	while number >= 1 do

		puts "#{english_number(number)} bottles of beer on the wall, #{english_number(number)} bottles of beer."
        number -= 1
        puts "Take one down and pass it around, #{english_number(number)} bottles of beer on the wall."
    end
		puts "No more bottles of beer on the wall, no more bottles of beer."
        puts "Go to the store and buy some more, #{english_number(99)} bottles of beer on the wall."
end

bottles_of_beer(9999)