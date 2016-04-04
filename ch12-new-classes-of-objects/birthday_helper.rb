  Dir.chdir'/Users/maceybaker/Desktop'

  hash = {}

  File.read('birthdays.txt').each_line do |i|
      comma = 0
      while i[comma] != ','
        comma = comma + 1
      end

    name = i[0..(comma)]
    bday = i[(comma +1)..-1]

    hash[name] = bday

  end

puts hash