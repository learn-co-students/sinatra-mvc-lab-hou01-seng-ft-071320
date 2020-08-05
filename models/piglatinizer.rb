

class PigLatinizer
    attr_accessor :phrase

    def initialize
        @phrase = phrase

    end

    
    def piglatinize(phrase)
        split_phrase = phrase.split(" ")
        piglat_phrase = []
        split_phrase.each do |word|     
            letters = word.split("")
            vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
            vowel_ = false
            index = 0
            if vowels.include?(letters[0])
                letters.push("w")
                vowel_ = true
            end
            while vowel_ == false && index < letters.count
                this_letter = letters.shift
                vowels.each do |x|
                    if this_letter == x
                        letters.unshift(this_letter)
                        vowel_ = true
                    end
                end
                if vowel_ == false
                    letters.push(this_letter)
                end
                index +=1
            end
            finished_word = letters.join + "ay"
            piglat_phrase << finished_word
        end
        piglat_phrase.join(" ")
    end


end

