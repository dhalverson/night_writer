class Translator

  attr_reader :message
  def initialize(message)
    @message = message
    @alpha = Alpha.new
  end

  def create_characters(message)
    message.downcase.chars
  end


  # def translate(char)
  #   @braille_chars[char.downcase]
  # end

end
