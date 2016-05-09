
def age(input)

    arrm = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

    years = (((((Time.now - Time.mktime(1986, 6, 29, 9, 30)) / 60) / 60) / 24) / 365 )

    seconds = (Time.now - Time.mktime(1986, 6, 29, 9, 30)).round

    puts "You are #{seconds} seconds old."

    mfrac = years - years.to_i

    m = (12 * mfrac)

    months = m.to_i

    days = 30 * (m - m.to_i)

    puts "That means you are approximately #{years.to_i} years, #{months} months, #{days.to_i} days old."
    puts
    puts "That means on #{(Time.now + (1000000000 - seconds)).strftime("%A %d %B %Y at %I:%M:%S")} you'll be one billion seconds old :-D"
    puts
    puts
end

#puts "Please put your birthday in 'day month year' format [i.e. 29 June 1986]"
input = "29 june 1986"
age(input)