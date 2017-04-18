birth_dates = {}                                                    # => {}
@f = '//Users/alistairwye/Projects/learn_to_program/birthdays.txt'  # => "//Users/alistairwye/Projects/learn_to_program/birthdays.txt"
File.readlines("#{@f}").each do |line|                              # => ["Christopher Alexander, Oct 4, 1936\n", "Christopher Lambert, Mar 29, 1957\n", "Christopher Lee, May 27, 1922\n", "Christopher Lloyd, Oct 22, 1938\n", "Christopher Pine, Aug 3, 1976\n", "Christopher Plummer, Dec 13, 1927\n", "Christopher Walken, Mar 31, 1943\n", "The King of Spain, Jan 5, 1938\n", "Captain America, May 11, 1921\n"]
# Reeads in each line from the file path @f and splits the string
# from each line before each comma, using multiple assignment to
# assign the first substring to name, the second substring to date
# and the third substring to year.
  name, date, year = line.split(',')                                # => ["Christopher Alexander", " Oct 4", " 1936\n"], ["Christopher Lambert", " Mar 29", " 1957\n"], ["Christopher Lee", " May 27", " 1922\n"], ["Christopher Lloyd", " Oct 22", " 1938\n"], ["Christopher Pine", " Aug 3", " 1976\n"], ["Christopher Plummer", " Dec 13", " 1927\n"], ["Christopher Walken", " Mar 31", " 1943\n"], ["The King of Spain", " Jan 5", " 1938\n"], ["Captain America", " May 11", " 1921\n"]
  birth_dates[name] = Time.local(year, *(date.split))               # => 1936-10-04 00:00:00 +0100, 1957-03-29 00:00:00 +0000, 1922-05-27 00:00:00 +0100, 1938-10-22 00:00:00 +0000, 1976-08-03 00:00:00 +0100, 1927-12-13 00:00:00 +0000, 1943-03-31 00:00:00 +0100, 1938-01-05 00:00:00 +0000, 1921-05-11 00:00:00 +0100
# *(date.split) splits the date variable into an array of two further
# substrings, e.g. if date = "Feb 18", *(date.split) => ["Feb, "18"].
# Those values, togethr with the year variable are fed into the new
# time object to create a birthday for each name.
end                                                                 # => ["Christopher Alexander, Oct 4, 1936\n", "Christopher Lambert, Mar 29, 1957\n", "Christopher Lee, May 27, 1922\n", "Christopher Lloyd, Oct 22, 1938\n", "Christopher Pine, Aug 3, 1976\n", "Christopher Plummer, Dec 13, 1927\n", "Christopher Walken, Mar 31, 1943\n", "The King of Spain, Jan 5, 1938\n", "Captain America, May 11, 1921\n"]

puts 'Hello, whose birthday would you like to know?'  # => nil
name = "David"                                        # => "David"
# The above line should read "name = gets.chomp" but I've hardcoded
# "David" to show how this would interact with the code if the user
# entered that name.  As that name is not in the birthdays.txt file
# it will return nil when fed into birthdates and keep looping uuntil
# the user inputs a name of someone in the birthdays.txt file.
bday = birth_dates[name]                              # => nil

while bday == nil                                                # => true, false
  puts "I don't know that person's birthday.  Please try again"  # => nil
  name = "Christopher Alexander"                                 # => "Christopher Alexander"
# The above line of code should read "name = gets.chomp" but I've
# hardcoded "Christopher Alexander" to show how this would interact
# with the code if the user entered that name.  As that name IS
# included in the birthdays.txt file it will NOT return nil, thereby
# moving the code onto the next step.
  bday = birth_dates[name]                                       # => 1936-10-04 00:00:00 +0100
end                                                              # => nil

if bday != nil                  # => true
  t_now = Time.new              # => 2016-05-11 20:57:52 +0100
  y_now = t_now.year            # => 2016
  age = t_now.year - bday.year  # => 80

  if t_now.month > bday.month || (t_now.month == bday.month && t_now.day > bday.day)  # => false
    age += 1
# The above allows us to update the age variable with the age the person the
# will be on their next birthday.
  end                                                                                 # => nil

  if t_now.month == bday.month && t_now.day == bday.day                            # => false
    puts "#{name} turns #{age} TODAY!!"
  else
    date = bday.strftime "%b %-d"                                                  # => "Oct 4"
# The "%b %-d" formats time according to the "directives" given.
# The directives are "%b" and "%-d" in the above.  The "%b" tells
# ruby to abbreviate the month to its three letter version, e.g.
# "January" gets reformatted to "Jan".  The "%d" tells ruby to
# abbreviate the day to a zero-padded version, e.g. "1" becomes
# "01".  The additional "-" in "%-d" removes the zero-padding, so
# "1" remains formatted as "1"
    t_now.month == bday.month && t_now.day == bday.day ? y_now = y_now + 1: y_now  # => 2016
# This line checks whether or not, as at today's date, we've passed
# the person's birthday.  If so, their next birthday will be the
# following year, whereas if not, their next birthday will be this year
# Either way, the y_now value gets updated accordingly, i.e.
# increased by +1 if the next birthday is the following year or unchanged
# if the next birthday is this year.  This is so we can interpolate it
# into the below string to say exactly when the person's next birthday
# will be.
    puts "#{name} will be #{age} on #{date}, #{y_now}."                            # => nil
  end                                                                              # => nil
end                                                                                # => nil

# >> Hello, whose birthday would you like to know?
# >> I don't know that person's birthday.  Please try again
# >> Christopher Alexander will be 80 on Oct 4, 2016.
