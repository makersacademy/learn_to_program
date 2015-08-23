#!/usr/bin/env ruby

class Integer
  def to_roman
    	num=self
      str=''
  	numerals_hash={	'M'=>1000,
  			'D'=>500,
  			'C'=>100,
  			'L'=>50,
  			'X'=>10,
  			'V'=>5,
  			'I'=>1, }

  	numerals_hash.each do |letter,devisor|
  	n=num/devisor
  	num=num%devisor
  	str+=letter*n

  	end
  	return str
  end


  def to_new_roman
    num=self
    str=''
  	numerals_hash={	'M'=>1000, 'CM'=>900,
  			            'D'=>500, 'CD'=>400,
  			            'C'=>100,'XC'=>90,
  			            'L'=>50,'XL'=>40,
  			            'X'=>10,'IX'=>9,
  			            'V'=>5, 'IV'=>4,
  			            'I'=>1, }

  	numerals_hash.each { |letter,devisor|
  	n=num/devisor
  	num=num%devisor
  	str+=letter*n
  	}
  	return str
  end

  def factorial
    num=self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end


end #end class
