
$dirs = {}
$files = {}

def processfiles(aDir)
  totalbytes = 0
  Dir.foreach(aDir) do |f|
    mypath = "#{aDir}/#{f}"
    next if f == '.' || f == '..'  # Skip current and parent directories
    
    if File.directory?(mypath)
      # Recursively process subdirectories
      bytes_in_dir = processfiles(mypath)
      $dirs[mypath] = bytes_in_dir
    else
      # Store file size
      filesize = File.size(mypath)
      $files[mypath] = filesize
      totalbytes += filesize
    end
  end
  return totalbytes
end

# Call processfiles with the starting directory
dirname = "../Files_and_IO"
processfiles(dirname)

# Sort files by size and display
puts "Files sorted by size:"
$files.sort { |a, b| a[1] <=> b[1] }.each do |file, size|
  puts "#{file} : #{size/1024} KB"
end

# Sort directories by size and display
puts "Directories sorted by size:"
$dirs.sort { |a, b| a[1] <=> b[1] }.each do |dir, size|
  puts "#{dir} : #{size/1024} KB"
end
