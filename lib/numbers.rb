class Number
  def initialize (number)
    @number = number
  end
  def number_to_word ()
    ones_values = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}

    tens_values = {2=>"twenty", 3 =>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
    # binding.pry

    if @number < 20
      return ones_values.fetch(@number)
    elsif @number.to_s.length == 2
      @number
      binding.pry

    end



    # @number.to_s.length
  end
  # number_to_word(@number)
end
