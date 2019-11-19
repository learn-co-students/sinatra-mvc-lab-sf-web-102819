require 'pry'
class PigLatinizer

    attr_reader :text

    def initialize
        
        
    end 

    def piglatinize(text)

        

        def single_word(text)

            vowels_array = ['a', 'e', 'i', 'o', 'u']
            characters = [ ]
            split_word = text.downcase.split('')
        

             if vowels_array.include?(split_word.first)
                 new_word = text + 'way'
             else 
                while !vowels_array.include?(split_word.first) do 
                    character = split_word.shift
                    characters << character
                    split_word 
                     end 
        
                     new_word = split_word.join + characters.join + 'ay'
        
        
      
             end  
             new_word

        end 

        
        if text.split(" ").length > 1 
            word_arr = [ ]
            words = text.split(" ") 
            words.each do |word|
                pig_latin = single_word(word)
                word_arr << pig_latin
                    end 
            word_arr.join(" ")
        else
            single_word(text)
        end 
        
           
    end 

    



end 

