=begin
Write a program to read in names and birth dates from
a text file. It should then ask you for a name. You type one in, and it tells
you when that person’s next birthday will be. The input file should look something like this:

Christopher Alexander, Oct 4, 1936
Christopher Lambert, Mar 29, 1957
Christopher Lee, May 27, 1922
Christopher Lloyd, Oct 22, 1938
Christopher Pine, Aug 3, 1976
Christopher Plummer, Dec 13, 1927
Christopher Walken, Mar 31, 1943
The King of Spain, Jan 5, 1938

You’ll probably want to break each line up and
put it in a hash, using the name as your key and the date as your value.
In other words: words:

birth_dates['The King of Spain'] = 'Jan 5, 1938'

(You can store the date in some other format if you prefer.)
Though you can do it without this tip, your program might look prettier
if you use the each_line method for strings. It works pretty much like each
does for arrays, but it returns each line of the multiline string one at a
time (but with the line endings, so you might need to chomp them). Just
thought I’d mention it....
=end
def birthday_helper(name)
  Dir.chdir '/Users/murilodalri/Desktop'
  text = "Christopher Alexander, Oct 4, 1936\nChristopher Lambert, Mar 29, 1957\nChristopher Lee, May 27, 1922\nChristopher Lloyd, Oct 22, 1938\nChristopher Pine, Aug 3, 1976\nChristopher Plummer, Dec 13, 1927\nChristopher Walken, Mar 31, 1943\nThe King of Spain, Jan 5, 1938"

  filename = 'text.txt'
  File.open filename, 'w' do |f|
    f.write text
  end
  text = File.read filename

  birth_dates = Hash.new
  text.each_line do |line|
    line = line.chomp.split(", ", 2)
    birth_dates[line[0]] = line[1]
  end

  birth_dates[name]
end
