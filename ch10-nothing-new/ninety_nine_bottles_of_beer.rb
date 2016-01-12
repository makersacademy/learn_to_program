class BeerSong
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0
    self.beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate(n - 1)} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)

    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n].capitalize
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    elsif n > 19 && n < 100
      "#{translate n/10*10}-#{translate n%10}".downcase
    elsif n > 100 && n < 1000  
          "#{translate n/100} hundred #{ translate n%100 }".downcase
    elsif n > 1000 && n < 9999
          "#{translate n/1000} thousand #{translate n%1000}".downcase # up to 9999, can't print the tens for some reason....
    end
  end
end

b = BeerSong.new(121)
b.print_song
