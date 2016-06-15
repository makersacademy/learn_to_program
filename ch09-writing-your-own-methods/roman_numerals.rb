def roman_numeral num
  number_M = "M" * (num/1000)
  number_MD = number_M + "D" * (num % 1000/500)
  number_MDC = number_MD + "C" * (num % 500/100)

# 900?
    if number_MDC.include? "DCCCC"
        number_MDC.gsub!"DCCCC", "CM"
# 400?
    elsif number_MDC.include? "CCCC"
        number_MDC.gsub!"CCCC", "CD"
    end

  number_MDCL = number_MDC + "L" * (num % 100/50)
  number_MDCLX = number_MDCL + "X" * (num % 50/10)
# 90?
    if number_MDCLX.include? "LXXXX"
        number_MDCLX.gsub! "LXXXX", "XC"
# 40?
    elsif number_MDCLX.include? "XXXX"
        number_MDCLX.gsub! "XXXX", "XL"
    end

  number_MDCLXV = number_MDCLX + "V" * (num %10/5)
  number_MDCLXVI = number_MDCLXV + "I" * (num %5/1)

#9?
  if number_MDCLXVI.include? "VIIII"
    number_MDCLXVI.gsub! "VIIII","IX"

# 4?
elsif number_MDCLXVI.include? "IIII"
    number_MDCLXVI.gsub!  "IIII","IV"
  end

 number_MDCLXVI
end
