require './lib/alpha'
require './lib/translator'

class NightWriter

input_file = ARGV[0]
output_file = ARGV[1]

# Reads from file, removes new lines
# => "Hello WorldThis project is hard"
alpha_message = (File.read(input_file)).tr("\n", "")
translator = Translator.new(alpha_message)
braille_message = translator.characters_to_braille(alpha_message)


# This should take the message, and write it to the braille file after translating

# require "pry"; binding.pry
# writer = File.open(output_file, 'w') do |f|
#   f.puts(braille_message)
# end

puts "Created #{ARGV[0]} containing #{File.write(ARGV[1], alpha_message)} characters"






#   def read_and_write
#     content = File.read(ARGV[0])
#     require "pry"; binding.pry
#     File.write(ARGV[1], content)
#
#     p "Created #{ARGV[0]} containing #{File.write(ARGV[1], content)} characters"
#   end
# end
#
# NightWriter.new.read_and_write
end
