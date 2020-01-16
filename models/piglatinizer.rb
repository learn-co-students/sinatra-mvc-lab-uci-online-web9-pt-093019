class PigLatinizer
    attr_reader :phrase

    # def initialize(text)
    #     @text = text
    # end

    # def consonant?(letter)
    #     letter.start_with?(/[^aeoui]/i)
    # end

    def piglatinize(text)
        @phrase = text
        words = @phrase.split(/\W/)
            words.map do |word|
                letter1 = word[0]
                letter2 = word[1]
                letter3 = word[2]
                if letter1.start_with?(/[^aeoui]/i) && letter2.start_with?(/[^aeoui]/i) && letter3.start_with?(/[^aeoui]/i)
                    word[0..2] = ''
                    word << "#{letter1}#{letter2}#{letter3}ay"
                elsif letter1.start_with?(/[^aeoui]/i) && letter2.start_with?(/[^aeoui]/i)
                    word[0..1] = ''
                    word << "#{letter1}#{letter2}ay"
                elsif letter1.start_with?(/[^aeoui]/i)
                    word[0] = ''
                    word << "#{letter1}ay"
                else
                    word << "way"
                end
            end
            words.join(" ")
    end



end