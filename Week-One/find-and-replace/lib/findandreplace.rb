class Words
  def initialize (phrase)
  @phrase = phrase
 end
 def replace ()
  sentence_words = {'world' => 'universe'}
  split_phrase = @phrase.split(" ")
  returned_phrase = []
  split_phrase.each do |index|
    if (sentence_words.to_s()).include?(index) == true
      returned_phrase.push(sentence_words.fetch(index))
    elsif index.include?('cat')
      index.sub!('cat', 'dog')
      returned_phrase.push(index)
    else
      returned_phrase.push(index)
    end
  end
  returned_phrase.join(" ")
 end
end
