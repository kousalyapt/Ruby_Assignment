
require 'fileutils'

# sourcedir = "../Arrays"

# targetdir = "../Array"

# unless Dir.exist?(targetdir)
#     puts "#{targetdir} does not exist. Creating it..."
#     FileUtils.mkdir(targetdir)  
# end

# Dir.foreach(sourcedir) do |f| 
# filepath = "#{sourcedir}//#{f}" 
# unless (File.directory?(filepath))
#     unless File.exist?("#{targetdir}//#{f}")
#         FileUtils.mv(filepath, targetdir)
#         puts("Copying... #{filepath}")
#     end
# end  
# end

#  FileUtils.rmdir("../Arrays")



 Dir.foreach("../Files_and_IO") do |f|
    puts f
  end
  