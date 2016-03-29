require 'humanize'
class BeerSong
  attr_accessor :beers
  
  def initialize(beers)
    beers = 0  if beers < 0
    beers = 9999 if beers > 9999
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
      puts "#{n.humanize.capitalize} #{bottle n} of beer on the wall,"        ,
           "#{n.humanize.capitalize} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{(n - 1).humanize.capitalize} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end
end
