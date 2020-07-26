require './lib/alpha'
require './lib/translator'

class NightWriter

input = File.open(ARGV[0], "r")
alpha_message = input.read.strip
input.close

translator = Translator.new
braille_message = translator.whole_braille(alpha_message)

writer = File.open(ARGV[1], "w")
writer.write("text goes here")
writer.close


# input_file = ARGV[0]
# output_file = ARGV[1]
#
# # Reads from file, removes new lines
# # => "Hello WorldThis project is hard"
# alpha_message = File.open(input_file, "r")
# alpha_message.read
# require "pry"; binding.pry
# # translates the message to braille
# translator = Translator.new
# braille_message = translator.whole_braille(alpha_message)
# # This should take the message, and write it to the braille file after translating
# File.write(output_file, braille_message)

puts "Created #{ARGV[1]} containing #{File.write(ARGV[1], alpha_message)} characters"






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
