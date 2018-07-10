class Alergy
  def initialize (allergy_score)
    @allergy_score = allergy_score
    @allergy_hash = { 1=>"eggs", 2=>"peanuts", 4=>"shellfish", 8=>"strawberries", 16=>"tomatoes", 32=>"chocolate", 64=>"pollen", 128=>"cats"}
  end

  def find_alergins ()
    allergies_array=[]
    score = @allergy_score
    while score > 0
      if score > 255
        score = 0
      end
      puts score
      if score >= 128
        allergies_array.push(@allergy_hash.fetch(128))
        score -= 128
      elsif score >= 64
        allergies_array.push(@allergy_hash.fetch(64))
        score -= 64
      elsif score >= 32
        allergies_array.push(@allergy_hash.fetch(32))
        score -= 32
      elsif score >= 16
        allergies_array.push(@allergy_hash.fetch(16))
        score -= 16
      elsif score >= 8
        allergies_array.push(@allergy_hash.fetch(8))
        score -= 8
      elsif score >= 4
        allergies_array.push(@allergy_hash.fetch(4))
        score -= 4
      elsif score >= 2
        allergies_array.push(@allergy_hash.fetch(2))
        score -= 2
      elsif score >= 1
        allergies_array.push(@allergy_hash.fetch(1))
        score -= 1

      end


    end
    allergies_array
  end

end
