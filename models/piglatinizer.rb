require 'pry'
class PigLatinizer


    def self.piglatinize_word(word)
        if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
            pig_array = word + 'way'
        else
            # const = 0
            # word.split(//).each do |index| 
            #     if ["a", "e", "i", "o", "u"].include?(index)
            #         return word.split(//).rotate(const).push('ay').join
            #     else
            #         const+=1
            #     end
            # end
            binding.pry
            vowel_index = word.index(/[aAeEiIoOuU]/)
            word.rotate(vowel_index) + "ay"
        end
    end

    def piglatinize(words)
        words.split(/ /).map{|word|PigLatinizer.piglatinize_word(word)}.join(" ")
    end
end

binding.pry