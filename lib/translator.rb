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
      result << @alpha.braille_chars[character]
    end
    result
  end

  def top_braille(message)
    result = []
    characters_to_braille(message).each do |array|
      result << array.first
    end
    result.join
  end
end
