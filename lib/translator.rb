class Translator

  def initialize
    @alpha = Alpha.new
  end

# this is an array of characters from the message
  def create_characters(message)
    message.downcase.chars
  end

# this should translate each individual char to it's braille equiv
  def characters_to_braille(message)
    result = []
    create_characters(message).each do |character|
      result << @alpha.braille_chars[character] ||= ["X","X","X"]
    end
    result
  end

#   def top_braille(message)
#     result = ""
#     characters_to_braille(message).each do |braille|
#       result << braille.first
#     end
#     result
#   end
#
#   def mid_braille(message)
#     result = ""
#     characters_to_braille(message).each do |braille|
#       result << braille[1]
#     end
#     result
#   end
#
#   def bottom_braille(message)
#     result = ""
#     characters_to_braille(message).each do |braille|
#       result << braille.last
#     end
#     result
#   end
#
# # use each_slice(80).map(&:join)
#   def whole_braille(message)
#       top_braille(message) + "\n" +
#       mid_braille(message) + "\n" +
#       bottom_braille(message)
#   end


end
