class PigLatinizer

  attr_accessor :text

  def initialize
    @text = @word
  end

  def piglatinize(text)
    sentence_array = text.split(/ /)
    final_result = []
    sentence_array.each do |word|
      text_array = word.split(//)
      if word.match?(/^[aeiouAEIOU]/)
        pig_word = word + "way"
      elsif word.match?(/^[^aeiouAEIOU]{3}/)
        pig_word = text_array[3..-1].join() + text_array[0..2].join + "ay"
      elsif word.match?(/^[^aeiouAEIOU]{2}/)
        pig_word = text_array[2..-1].join() + text_array[0..1].join + "ay"
      elsif word.match?(/^[^aeiouAEIOU]{1}/)
        pig_word = text_array[1..-1].join() + text_array[0] + "ay"
      end
      final_result << pig_word
    end
    final_result.join(" ")
  end
end
