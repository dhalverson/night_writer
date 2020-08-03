class Translator

  def initialize
    @alpha = Alpha.new
  end

  def create_characters(message)
    message.downcase.chars
  end

  def characters_to_braille(message)
    result = []
    create_characters(message).each do |character|
      result << @alpha.braille_chars[character] ||= ["X","X","X"]
    end
    result
  end

  def format_braille(message)
    characters_to_braille(message).transpose
  end

  def display_braille(message)
    result = ""
    result << format_braille(message)[0].join("") << "\n"
    result << format_braille(message)[1].join("") << "\n"
    result << format_braille(message)[2].join("")
  end





  # this will be used for if statement, if over 80 chars
    def message_length(message)
      message.chars.count
    end

    def braille_to_rows(braille)
      braille.scan(/.{1,2}/)
    end




end
