#will be doing this recursively as I am practicing recursion ask_info validates input to be Fixnum only. 

def ask_info(question, y_m_d) 
  puts question 
  answer = gets.chomp 

  begin
    case y_m_d
    when 'y' then Time.new(answer)
    when 'm' then Time.new(2000,answer)
    when 'd' then Time.new(2000,1,answer)
    end
  rescue
    puts "Please enter valid data"
    answer = ask_info question, y_m_d
  end 
    return answer
end

year = ask_info "What year were you born in?", 'y'
month = ask_info "What month?", 'm'
day = ask_info "Day?", 'd'

current_age = ((Time.now - Time.new(year,month,day))/60/60/24/365).to_i

current_age.times {|t| puts "SPANK"}
