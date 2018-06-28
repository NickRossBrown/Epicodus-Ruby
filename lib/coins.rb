class Coins
  def initialize (change)
  @change = change
  end

  def count_coins ()
    coin_count_array = []
    quarters = @change / 25
    total = @change % 25
    dimes = total / 10
    if quarters > 0
      coin_count_array.push(quarters.to_s + " quarter(s)")
    end
    if dimes > 0
      coin_count_array.push(" " + dimes.to_s + " dime(s)")
    end


    return coin_count_array.join
  end
end
