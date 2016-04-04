birthdays = {"Christopher Alexander" => "Oct 4, 1936",
             "Christopher Lambert"   => "Mar 29, 1957",
             "Christopher Lee"       => "May 27, 1922",
             "Christopher Lloyd"     => "Oct 22, 1938",
             "Christopher Pine"      => "Aug 3, 1976",
             "Christopher Plummer"   => "Dec 13, 1927",
             "Christopher Walken"    =>  "Mar 31, 1943",
             "The King of Spain"     => "Jan 5, 1938",
}

puts "Write a person's name:"
input = gets.chomp

birthdays.each do |name, birth|
  if input.downcase == name.downcase
    puts "#{name}: #{birth}"
  end
end