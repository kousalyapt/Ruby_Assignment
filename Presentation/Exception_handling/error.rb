def chDisk(aChar)
    begin
      # Attempt to change to the specified disk drive
      Dir.chdir("#{aChar}:\\") 
    rescue Errno::ENOENT => e
      puts "Error: Drive does not exist. (#{e.class})"
    rescue Errno::EACCES => e
      puts "Error: Access denied. (#{e.class})"
    rescue Errno::EINVAL => e
      puts "Error: Invalid argument. (#{e.class})"
    rescue => e
      puts "An unknown error occurred: #{e.class}"
    end
  end
  
  chDisk("D")    # Attempt to access D: drive
  chDisk("X")    # Attempt to access non-existent X: drive
  chDisk("ABC")  # Attempt to access invalid drive
  puts( Errno.constants )

#   puts Errno::EINVAL::Errno
  