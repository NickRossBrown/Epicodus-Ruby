class Number
  def initialize (number)
    @number = number
  end
  def number_to_word ()
    ones_values = {"1"=>"one", "2"=>"two", "3"=>"three", "4"=>"four", "5"=>"five", "6"=>"six", "7"=>"seven", "8"=>"eight", "9"=>"nine", "10"=>"ten", "11"=>"eleven", "12"=>"twelve", "13"=>"thirteen", "14"=>"fourteen", "15"=>"fifteen", "16"=>"sixteen", "17"=>"seventeen", "18"=>"eighteen", "19"=>"nineteen"}

    tens_values = {"2"=>"twenty", "3" =>"thirty", "4"=>"forty", "5"=>"fifty", "6"=>"sixty", "7"=>"seventy", "8"=>"eighty", "9"=>"ninety"}
    # binding.pry

    if @number < 20
      return ones_values.fetch(@number.to_s)
    elsif @number.to_s.length == 2
      return tens_values.fetch(@number.to_s[0]) + "-" + ones_values.fetch(@number.to_s[1])
    elsif @number.to_s.length == 3
      return ones_values.fetch(@number.to_s[0])+ " hundred " + tens_values.fetch(@number.to_s[1]) + "-" + ones_values.fetch(@number.to_s[2])
    elsif @number.to_s.length == 4
      return ones_values.fetch(@number.to_s[0])+ " thousand " +ones_values.fetch(@number.to_s[1])+ " hundred " + tens_values.fetch(@number.to_s[2]) + "-" + ones_values.fetch(@number.to_s[3])
    elsif @number.to_s.length == 5
      if @number.to_s[0,2].to_i < 20
        return ones_values.fetch(@number.to_s[0,2])+ " thousand " +ones_values.fetch(@number.to_s[2])+ " hundred " + tens_values.fetch(@number.to_s[3]) + "-" + ones_values.fetch(@number.to_s[4])
      else
        return tens_values.fetch(@number.to_s[0])+ "-" + ones_values.fetch(@number.to_s[1])+ " thousand " +ones_values.fetch(@number.to_s[2])+ " hundred " + tens_values.fetch(@number.to_s[3]) + "-" + ones_values.fetch(@number.to_s[4])
      end
    elsif @number.to_s.length == 6
      return ones_values.fetch(@number.to_s[0])+ " hundred " + tens_values.fetch(@number.to_s[1]) + "-" + ones_values.fetch(@number.to_s[2]) + " thousand " + ones_values.fetch(@number.to_s[3])+ " hundred " + tens_values.fetch(@number.to_s[4]) + "-" + ones_values.fetch(@number.to_s[5])

    elsif @number.to_s.length == 7
      return ones_values.fetch(@number.to_s[0]) + " million " +  ones_values.fetch(@number.to_s[1])+ " hundred " + tens_values.fetch(@number.to_s[2]) + "-" + ones_values.fetch(@number.to_s[3]) + " thousand " + ones_values.fetch(@number.to_s[4])+ " hundred " + tens_values.fetch(@number.to_s[5]) + "-" + ones_values.fetch(@number.to_s[6])

    elsif @number.to_s.length == 8
      if @number.to_s[0,2].to_i < 20
        return  ones_values.fetch(@number.to_s[0, 2]) + " million "  +  ones_values.fetch(@number.to_s[2])+ " hundred " + tens_values.fetch(@number.to_s[3]) + "-" + ones_values.fetch(@number.to_s[4]) + " thousand " + ones_values.fetch(@number.to_s[5])+ " hundred " + tens_values.fetch(@number.to_s[6]) + "-" + ones_values.fetch(@number.to_s[7])
      else
        return tens_values.fetch(@number.to_s[0])+ "-" + ones_values.fetch(@number.to_s[1])+ " million " +  ones_values.fetch(@number.to_s[2])+ " hundred " + tens_values.fetch(@number.to_s[3]) + "-" + ones_values.fetch(@number.to_s[4]) + " thousand " + ones_values.fetch(@number.to_s[5])+ " hundred " + tens_values.fetch(@number.to_s[6]) + "-" + ones_values.fetch(@number.to_s[7])
      end
    elsif @number.to_s.length == 9
      ones_values.fetch(@number.to_s[0])+ " hundred " + tens_values.fetch(@number.to_s[1]) + "-" + ones_values.fetch(@number.to_s[2]) + "million"



    end



  end

end
