# class String
#   define_method(:leetspeak) do
#     char_array = self.split('')
#     new_array = []
#     puts(char_array)
#     char_array.each_with_index do |letter, index|
#       if letter.eql?('e')
#         new_array.push('3')
#       elsif letter.eql?('o')
#         new_array.push('0')
#       elsif letter.eql?('I')
#         new_array.push('1')
#       elsif letter.eql?('s')
#         new_array.push('z')
#         if char_array.at(0).eql?('s')
#           new_array.shift()
#           new_array.unshift('s')
#         end
#       else
#         new_array.push(letter)
#       end
#     end
#
#   end
# end

class String
  define_method(:leetspeak) do
    word_array = self.split(' ')
    leet_sentence = []

    word_array.each do |word|
      char_array = word.split('')
      new_word = []
      char_array.each_with_index do |letter, index|
        if letter.eql?('e')
          new_word.push('3')
        elsif letter.eql?('o')
          new_word.push('0')
        elsif letter.eql?('I')
          new_word.push('1')
        elsif letter.eql?('s')
          if char_array.at(0).eql?('s').&(index.eql?(0))
            new_word.push('s')
          else
            new_word.push('z')
          end
        else
          new_word.push(letter)
        end
      end
      leet_sentence.push(new_word.join())
    end
    leet_sentence.join(" ")
  end
end
