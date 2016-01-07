def birth_day_helper txt_file
  sentences = []
  overview = Hash.new
  txt_file.each_line do |line|
    lines =[]
    lines.push(line.gsub!(/,/,'').split(' '))
    sentences << lines
    #puts lines.join(' ')
  end
  #puts sentences.to_s
  sentences.each do |entry|
    #puts entry.join(' ')
    entry.each do |x|
      #puts x[0], x[1]
      overview[(x[0]+" "+ x[1])] = x[2..4]
    end
  end
  puts "Which name do you want?"
  name = gets.chomp!
  bday = overview[name]
  now = Time.new
  year = bday[2]
  bday = bday[0..1]

  #puts "#{name} next birthday will be #{overview[name[0..1]].join(' ')}"
  puts "#{name}'s next birthday will be #{bday.join(' ')} and will be #{now.year-year.to_i} old"
end

birth_day_helper (" Christopher Alexander, Oct 4, 1936 \n Christopher Lambert, Mar 29, 1957 \n Christopher Lee, May 27, 1922 \n Christopher Lloyd, Oct 22, 1938 \n Christopher Pine, Aug 3, 1976 \n Christopher Plummer, Dec 13, 1927 \n Christopher Walken, Mar 31, 1943 \n The King of Spain, Jan 5, 1938 ")
