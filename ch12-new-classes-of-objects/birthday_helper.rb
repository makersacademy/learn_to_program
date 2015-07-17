birthdays = {}

birthdays['Christopher Alexander'] = 'Oct  4 , 1936'
birthdays['Christopher Lambert' ] = 'Mar 29, 1957'
birthdays['Christopher Lee'] = 'May 27, 1922'
birthdays['Christopher Lloyd'] = 'Oct 22, 1938'
birthdays['Christopher Pine'] = 'Aug  3 , 1976'
birthdays['Christopher Plummer' ] = 'Dec 13, 1927'
birthdays['Christopher Walken'] = 'Mar 31, 1943'
birthdays['The King of Spain'] = 'Jan  5 , 1938'



puts'Whose birthday would you like to know?' 
name = gets.chomp
date =birthdays[name]
puts "#{name} next birthday will be on #{date[0..5]}"
