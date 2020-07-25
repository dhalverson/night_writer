class Alpha

# This can likely be moved to a module, moving any state/methods to translator
  attr_reader :braille_chars
  def initialize
    @braille_chars = {
      "a" => ['.0', '00', '00'], "b" => ['.0', '.0', '00'], "c" => ['..', '00', '00'],
      "d" => ['..', '0.', '00'], "e" => ['.0', '0.', '00'], "f" => ['..', '.0', '00'],
      "g" => ['..', '..', '00'], "h" => ['.0', '..', '00'], "i" => ['0.', '.0', '00'],
      "j" => ['0.', '..', '00'], "k" => ['.0', '00', '.0'], "l" => ['.0', '.0', '.0'],
      "m" => ['..', '00', '.0'], "n" => ['..', '0.', '.0'], "o" => ['.0', '0.', '.0'],
      "p" => ['..', '.0', '.0'], "q" => ['..', '..', '.0'], "r" => ['.0', '..', '.0'],
      "s" => ['0.', '.0', '.0'], "t" => ['0.', '..', '.0'], "u" => ['.0', '00', '..'],
      "v" => ['.0', '.0', '..'], "w" => ['0.', '..', '0.'], "x" => ['..', '00', '..'],
      "y" => ['..', '0.', '..'], "z" => ['.0', '0.', '..'], " " => ['..', '..', '..']
    }
  end
end
