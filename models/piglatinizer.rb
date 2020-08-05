require 'pry'
class PigLatinizer
    # attr_reader :text
   
    def initialize
    end

    def piglatinize(words)
    words.split(/ /).map{|word|PigLatinizer.piglatinize_word(word)}.join(" ")
    end

    def self.piglatinize_word(word)
        if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
            pig_array = word + 'way'
        else
            const = 0
            word.split(//).each_with_object([]) do |index,con| 
                if ["a", "e", "i", "o", "u"].include?(index)
                    return word.split(//).rotate(const).push('ay').join
                else
                    const+=1
                end
            end
        end
    end
end
