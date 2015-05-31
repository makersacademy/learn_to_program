class BirthdayHelper

  def get_birth_date 
    puts "This is a birthday helper."
    puts "Give me a name, baby."
    birth_date_striped person_name = gets.chomp
  end

private

  def birth_date_striped person_name, file_name = "./BirthDates.rb"
    File.open file_name do |file|
      parser file, person_name
    end
  end

  def parser file, person_name
    date = []

    file.each do |line| 
      name, month_day, year = line.split "," 
      date = [month_day, year] if name == person_name
    end

    date.join " ,"
  end

end