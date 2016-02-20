text = "Christopher Alexander,  Oct  4, 1936
Christopher Lambert,  Mar 29, 1957
Christopher Lee,  May 27, 1922
Christopher Lloyd,  Oct 22, 1938
Christopher Pine,  Aug  3, 1976
Christopher Plummer,  Dec 13, 1927
Christopher Walken,  Mar 31, 1943
The King of Spain,  Jan  5, 1938"


birthdays = {}
text.each_line{|x|
  name = x.scan(/[^,]*/)[0]                             # Extract name before first comma
  date = x.scan(/,.*/)[0].reverse.chop.reverse.strip    # Extract date after first comma and delete comma + whitespace
  birthdays[name] = date                                # Add names + dates to hash
}

puts "Whose birthday would you like to know?"
answer = gets.chomp
birthdays.has_key?(answer) ? (puts birthdays[answer]) : (puts "Dunno!")
