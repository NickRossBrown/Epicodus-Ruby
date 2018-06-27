class RPS
  def initialize (player1)
    @player1 = player1
  end

  def wins? (player2)
    if @player1 == 'rock' && player2 == 'paper'
      false
    elsif @player1 == 'rock' && player2 == 'scissors'
      true

    end
  end

end
