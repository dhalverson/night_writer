require './lib/alphabetable'

class Translator
  include Alphabetable

  def message_length(message)
    message.chars.count
  end

  def create_characters(message)
    message.downcase.chars
  end

  def characters_to_braille(message)
    create_characters(message).map do |char|
      braille_chars[char] ||= ["x", "x", "x"]
    end
  end

  def format_braille(message)
    characters_to_braille(message).transpose
  end

  def display_braille(message)
    result = []
    braille_message = format_braille(message)
    result << braille_message[0] << "\n"
    result << braille_message[1] << "\n"
    result << braille_message[2]
    return result.join
  end

  def display_long_braille(message)
    result = []
    braille_message = format_braille(message)
    for array in format_braille(message) do
      result << braille_message[0].slice!(0..39) << "\n"
      result << braille_message[1].slice!(0..39) << "\n"
      result << braille_message[2].slice!(0..39) << "\n"
    end
    return result.join
  end

  def display_all_braille(message)
    if message_length(message) >= 40
      display_long_braille(message)
    else
      display_braille(message)
    end
  end

  def split_braille(braille)
    braille.split(/\n/)
  end

  def braille_rows(braille)
    braille_split = split_braille(braille)
    top = braille_split[0].scan(/.{1,2}/)
    mid = braille_split[1].scan(/.{1,2}/)
    bot = braille_split[2].scan(/.{1,2}/)
    top.zip(mid, bot)
  end

  def braille_to_english(braille)
    braille_rows(braille).map do |letter|
      braille_chars.invert[letter]
    end
  end

  def display_english(braille)
    braille_to_english(braille).join
  end
end
