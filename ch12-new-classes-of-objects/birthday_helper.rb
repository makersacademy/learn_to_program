def birth_dates name

  File.readlines('birthday_helper.txt').each do |x|
    # d.o.b
    while x.include?(name)
      puts name
      x.gsub!("#{name}, ", '')
      puts x

      # age
      year = (x[8..12]).to_i
      day = (x[5]).to_i
      month = (x[0..2]).to_sym
      month_hash = {Jan:1,Feb:2,Mar:3,Apr:4,May:5,Jun:6,Jul:7,Aug:8,Sep:9,Oct:10,Nov:11,Dec:12}
      month = month_hash[month]
      
      t = *(Time.new)
      m = (day - t[3]) < 0 ? month -1 : month
      age = m > t[4] ? ((t[5]-year)-1) : (t[5]-year)
      puts age
    end
  end

end

birth_dates('The King of Spain')
birth_dates('The Prince of Potato')
birth_dates('Christopher Lee')