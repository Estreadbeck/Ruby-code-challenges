def read_first_line(file_path)
  file = File.open(file_path)
  first_line = file.readline.chomp
rescue => exception
  warn "Error reading from #{file_path} Message: #{exception.message}"
ensure
  if file
    file.close
  end
  p first_line
end


read_first_line("sample2.txt")