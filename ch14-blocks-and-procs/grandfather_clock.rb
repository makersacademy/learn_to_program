def grandfather_clock &block
  hours_passed =  (Time.new.hour + 11)%12 + 1
  hours_passed.times(&block)

end

grandfather_clock do
  'DONG!'
end
