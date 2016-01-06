birthday = Time.gm(1986, 3, 8, 2, 2, 1)
  #seconds = 1000000000%60
  #mins = ((1000000000-seconds)/60)%60)
  #hours = ((1000000000-seconds-(mins*60))/60)%24)
  #days = ((1000000000-seconds-(mins*60)-(hours*60*60))/24)%365)
  #years = ((1000000000-seconds-(mins*60)-(hours*60*60)(days*24*60*60))/365)
  #puts "#{years} years #{days} days #{hours} hours #{mins} mins #{seconds} seconds in a billion seconds"
bil_sec_old = birthday + 1000000000
puts bil_sec_old
