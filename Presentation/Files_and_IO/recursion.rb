$dirsize = 0  

def processfiles(aDir)
  totalbytes = 0  


  Dir.foreach(aDir) do |f|
    mypath = "#{aDir}\\#{f}" 

    if File.directory?(mypath)  
      if f != '.' and f != '..'  
        bytes_in_dir = processfiles(mypath)  
        puts("<DIR> ---> #{mypath} contains [#{bytes_in_dir/1024}] KB")  
      end
    else
      filesize = File.size(mypath)  
      totalbytes += filesize  
      puts("#{mypath} : #{filesize/1024} KB")  
    end
  end

  $dirsize += totalbytes  
  return totalbytes  
end


dirname = "../../Presentation"
processfiles(dirname)


printf("Size of this directory and subdirectories is #{$dirsize} bytes, #{$dirsize/1024} KB, %0.02f MB\n", $dirsize/1048576.0)
