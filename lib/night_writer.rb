class NightWriter

  def read_and_write
    content = File.read(ARGV[0])
    File.write(ARGV[1], content)

    puts "Created #{ARGV[0]} containing 256 characters"
  end

end

NightWriter.new.read_and_write
