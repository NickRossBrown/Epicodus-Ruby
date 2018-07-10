class Palindrome
 def initialize (phrase)
   @phrase = phrase
 end
 def palindrome?()
   puts @phrase
   split_phrase = @phrase.split(" ").join("").split("")
   reversed_array = []

   split_phrase.each do |letter|
     reversed_array.unshift(letter)
  end
   if split_phrase == reversed_array
     true
   else
     false
   end
 end
end
