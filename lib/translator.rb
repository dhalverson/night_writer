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


# [["0.", "0.", "0.", "0.", "0."], ["00", ".0", "0.", "0.", ".0"], ["..", "..", "0.", "0.", "0."]]
  def format_braille(message)
    characters_to_braille(message).transpose
  end

# this will be used for if statement, if over 80 chars
  def message_length(message)
    message.chars.count
  end

      # result << format_braille(message)[0].join("").scan(/.{4}/)
  def display_braille(message)
    result = ""
    if message_length(message) <= 2
      result << format_braille(message)[0].join("") << "\n"
      result << format_braille(message)[1].join("") << "\n"
      result << format_braille(message)[2].join("")
    else
      result << format_braille(message)[0].join("") << "\n"
      result << format_braille(message)[1].join("") << "\n"
      result << format_braille(message)[2].join("")
    end
  end




#
# # use each_slice(80).map(&:join)
#   def whole_braille(message)
#       top_braille(message) + "\n" +
#       mid_braille(message) + "\n" +
#       bottom_braille(message)
#   end


end
