require 'pry'
class PigLatinizer


    def self.piglatinize_word(word)
        if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
            pig_array = word + 'way'
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            word.split(//).rotate(vowel_index).push("ay").join
        end
    end

    def piglatinize(words)
        words.split(/ /).map{|word|PigLatinizer.piglatinize_word(word)}.join(" ")
    end
end
