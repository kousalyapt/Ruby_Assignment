file_path = 'large_file.csv'

start_time = Time.now
File.foreach(file_path) do |row|
  
end
end_time  = Time.now
puts end_time - start_time 

#1.1118672 secs


start1_time = Time.now
File.read(file_path)
end1_time  = Time.now
puts end1_time - start1_time 

#0.3330874 secs
