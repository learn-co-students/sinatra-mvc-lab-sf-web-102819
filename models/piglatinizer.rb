class PigLatinizer

    def piglatinize words
        pig_words = []
        split_words = words.split(" ")
        split_words.each do |word|
            vowels = "aeiou"
            if vowels.include?(word[0].downcase)
                pig_words << word + "way"
            else
                new_word = ""
                front = ""
                word.each_char.with_index do |char,i|
                    if vowels.include?(char.downcase)
                        new_word = word[i..-1]
                        break
                    else
                        front += char
                    end
                end
                new_word += front + "ay"
                pig_words << new_word
            end
        end
        pig_words.join(" ")
    end
end