class Riddle
  def initialize(riddle_one)
    @riddle_one_answer = riddle_one
    # @riddle_two_answer = riddle_two
    # @riddle_three_answer = riddle_three
    # @riddle_four_answer = riddle_four
    # @riddle_five_answer = riddle_five
  end

  def riddle_method
    if @riddle_one_answer.downcase == "gravity"
      "You pass!"
    else
      "Fail!"
    end
  end
end
# , riddle_two, riddle_three, riddle_four riddle_five
