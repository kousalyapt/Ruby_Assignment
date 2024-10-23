require 'benchmark'

file_path = 'large_file.csv'

Benchmark.bm(20) do |x|

  x.report("File.foreach") do
    File.foreach(file_path) do |line|
      
    end
  end

  x.report("File.read") do
    content = File.read(file_path)
  end

  x.report("File.readlines") do
    lines = File.readlines(file_path) 
  end

  x.report("File.open with gets") do
    File.open(file_path, 'r') do |file|
      while line = file.gets
    
      end
    end
  end

  x.report("File.open with readpartial") do
    File.open(file_path, 'r') do |file|
      begin
        while chunk = file.readpartial(1024) 
        
        end
      rescue EOFError
        
      end
    end
  end


  x.report("IO.read") do
    content = IO.read(file_path)
  end


  x.report("IO.foreach") do
    IO.foreach(file_path) do |line|

    end
  end

end
