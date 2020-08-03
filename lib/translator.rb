require './lib/alpha'

class Translator
  include Alpha

  def create_characters(message)
    message.downcase.chars
  end

  def characters_to_braille(message)
    create_characters(message).map do |char|
      braille_chars[char]
    end
  end

  def format_braille(message)
    characters_to_braille(message).transpose
  end

  def display_braille(message)
    result = []
    if message_length(message) < 40
      result << format_braille(message)[0].join("") << "\n"
      result << format_braille(message)[1].join("") << "\n"
      result << format_braille(message)[2].join("")
    else
      result << format_braille(message)[0].slice!(0..79) << "\n"
      result << format_braille(message)[1].slice!(0..79) << "\n"
      result << format_braille(message)[2].slice!(0..79) << "\n"
    end
    result.join
  end





  def message_length(message)
    message.chars.count
  end

  def split_braille(braille)
    braille.split(/\n/)
  end

  def braille_rows(braille)
    top = split_braille(braille)[0].scan(/.{1,2}/)
    mid = split_braille(braille)[1].scan(/.{1,2}/)
    bot = split_braille(braille)[2].scan(/.{1,2}/)
    top.zip(mid, bot)
  end

# [["0.", "00", ".."], ["0.", ".0", ".."]]
  def braille_to_english(braille)
    braille_rows(braille).map do |letter|
      braille_chars.invert[letter]
    end
  end

  def display_english(braille)
    braille_to_english(braille).join
  end


end
