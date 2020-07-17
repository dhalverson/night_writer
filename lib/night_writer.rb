class NightWriter

  def read_and_write
    content = File.read(ARGV[0])
    File.write(ARGV[1], content)

    p "Created #{ARGV[0]} containing #{File.write(ARGV[1], content)} characters"
  end

end

NightWriter.new.read_and_write
