class PigLatinizer

    $vowels = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]

    def piglatinize(user_input)
        user_input.split(' ').map {|w| piggy_this(w)}.join(" ")
    end

    def piggy_this(word)
        if $vowels.include?(word[0]) == false
            n_consonants = word.split(/([aeiouAEIOU].*)/).first.length
            total_chars = word.length
            new_word = word[n_consonants..total_chars] + word[0...n_consonants] + "ay"
        else
            $vowels.include?(word[0])
            new_word = word + "way"
        end
        new_word
    end

end