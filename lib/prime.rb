class Prime
  def initialize (integer)
    @integer = integer
    @array = (2..@integer).to_a
  end

  def return_array_primes()
    prime_array = []
    @array.each do |number|

      # prime_array.push(number)
      @array = @array.reject {|r| r > number && r % number == 0}
    end
    puts @array
    @array
  end
end
