class Riddle
  def initialize(riddle_one, riddle_two, riddle_three)
    @riddle_one_answer = riddle_one.downcase
    @riddle_two_answer = riddle_two.downcase
    @riddle_three_answer = riddle_three.downcase
  end

  def riddle_method
    if @riddle_one_answer == "gravity" && @riddle_two_answer == "time" && @riddle_three_answer == "teeth"
      "You pass!"
    else
      "Fail!"
    end
  end
end

# , riddle_three = 0, riddle_four = 0, riddle_five = 0
