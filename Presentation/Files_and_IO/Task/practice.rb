require 'date'
require 'csv'


# def create_large_csv_file_by_rows(file_path, total_rows)

#   File.open(file_path, 'w') do |file|
    
#     file.puts("ID,Name,Age,Email,Date")

#     id = 1
#     start_time = Time.now
#     while id <= total_rows
      
#       random_date = Date.today - rand(1..365)
    
#       file.puts("#{id},Name_#{id},#{rand(18..65)},email_#{id}@example.com,#{random_date}")
#       id += 1
#     end
#     end_time  = Time.now
#     puts end_time - start_time 
#   end

#   puts "Created CSV file: #{file_path} with #{total_rows} rows."
# end

# create_large_csv_file_by_rows('large_file.csv', 5_000_000)




# file_path = 'large_file.csv'

# start_time = Time.now
# File.foreach(file_path) do |row|
  
# end
# end_time  = Time.now
# puts end_time - start_time 


# start1_time = Time.now
# File.read(file_path)
# end1_time  = Time.now
# puts end1_time - start1_time 



# def modify_date_format_in_csv(input_file_path, output_file_path)
#     start_time = Time.now
  
#     File.open(output_file_path, 'w') do |csv|
    
#      CSV.open(input_file_path, 'r')   do |row|
    
#             date = row['Date']
#             date_obj = Date.parse(date)
#             day = date_obj.day

#             suffix = case day
#             when 1, 21, 31 then 'st'
#             when 2, 22 then 'nd'
#             when 3, 23 then 'rd'
#             else 'th'
#             end

#             formatted_date = "#{day}#{suffix}#{date_obj.strftime('%B%Y')}" 
            
#             row['Date'] = formatted_date
#             csv << row
#         end
        
#     end
#     end_time  = Time.now
#     puts end_time - start_time 
#     puts "Modified CSV file created at: #{output_file_path}"
    
# end

  





# def modify_date_format_in_csv(input_file_path)
#         start_time = Time.now
      
#         File.open(input_file_path, 'r+') do |csv|
        
#             CSV.open(input_file_path,'r') do |row|
        
#                 date = row['Date']
#                 date_obj = Date.parse(date)
#                 day = date_obj.day
    
#                 suffix = case day
#                 when 1, 21, 31 then 'st'
#                 when 2, 22 then 'nd'
#                 when 3, 23 then 'rd'
#                 else 'th'
#                 end
    
#                 formatted_date = "#{day}#{suffix}#{date_obj.strftime('%B%Y')}" 
                
#                 row['Date'] = formatted_date
#                 csv.puts row
#             end
            
#         end
#         end_time  = Time.now
#         puts end_time - start_time 
#         puts "Modified CSV file created at: #{input_file_path}"
        
#     end
    
      
    
    
#     input_file_path = 'large_file.csv'  
#     output_file_path = 'modified_large_file.csv'  
    
#     modify_date_format_in_csv(input_file_path)
    







# require 'csv'
# require 'date'

# def modify_date_format_in_csv(input_file_path)

#   CSV.open(input_file_path,'r+') do |file|
    
#   CSV.foreach(input_file_path, headers: true) do |line|

#     date = line['Date']
    
#     if date
#       date_obj = Date.parse(date)
#       day = date_obj.day

    
#       suffix = case day
#                when 1, 21, 31 then 'st'
#                when 2, 22 then 'nd'
#                when 3, 23 then 'rd'
#                else 'th'
#                end

      
#       formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
      
      
#       line['Date'] = formatted_date
#     end

    
#     file.puts line.to_csv
#   end
# end
# end

# input_file_path = 'sample.csv'
# modify_date_format_in_csv(input_file_path)


# require 'csv'
# require 'date'

# def modify_date_format_in_csv(input_file_path)
#   start_time = Time.now
#   csv_content = CSV.read(input_file_path, headers: true)

#   File.open(input_file_path, 'w') do |file|
    
#     file.puts csv_content.headers.to_csv

#     csv_content.each do |row|
    
#       date = row['Date']
      
#       if date
#         date_obj = Date.parse(date)
#         day = date_obj.day

#         suffix = case day
#                  when 1, 21, 31 then 'st'
#                  when 2, 22 then 'nd'
#                  when 3, 23 then 'rd'
#                  else 'th'
#                  end

#         formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
        
#         row['Date'] = formatted_date
#       end

#       file.puts row.to_csv
#     end
#   end
# end_time = Time.now
# puts end_time - start_time
#   puts "Modified CSV file at: #{input_file_path}"
# end

# input_file_path = 'large_file.csv'
# modify_date_format_in_csv(input_file_path)



require 'csv'
require 'date'

@count = 0

def modify_date_format_in_csv(input_file_path)
  # Open the CSV and parse each row
  start_time = Time.now
  File.open(input_file_path,'r+') do |file|
    
  begin
  CSV.foreach(input_file_path, headers: true) do |line|
    # puts line # This will print each row as a hash
    
     if @count == 0
        file.puts line.headers.to_csv
        @count += 1
     end
    # Access the 'Date' field
   
    date = line['Date']
    
    if date
      begin
      date_obj = Date.parse(date)
      day = date_obj.day

      # Determine the correct suffix
      suffix = case day
               when 1, 21, 31 then 'st'
               when 2, 22 then 'nd'
               when 3, 23 then 'rd'
               else 'th'
               end

      # Format the date
      formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
      
      # Update the 'Date' field with the formatted date
      line['Date'] = formatted_date
      rescue ArgumentError
        puts "Skipping invalid date format: #{date}"
        next  # Skip this iteration if the date is invalid
      rescue CSV::MalformedCSVError => e
        puts "Malformed CSV error in line #{index + 1}: #{e.message}. Skipping this line."
      rescue => e
        puts "An unexpected error occurred: #{e.message}"
      end
    end

    
    file.puts line.to_csv
  end
  rescue CSV::MalformedCSVError => e
      puts "Malformed CSV error in line. Skipping this line."
  end
end
puts "Modified"
end_time = Time.now
puts end_time - start_time

end

input_file_path = 'large_file.csv'
modify_date_format_in_csv(input_file_path)


# require 'csv'
# require 'date'
# @count = 0

# def modify_date_format_in_csv(input_file_path)
#   start_time = Time.now
  
#   File.open(input_file_path, 'r+') do |file|
#     begin
#     CSV.foreach(file, headers: true) do |line|
#       # Write headers back to the file only once
#       if @count == 0
#         file.puts line.headers.to_csv
#         @count += 1
#       end
      
#       # Access the 'Date' field
      
#       date = line['Date']
      
      
#       if date
        
#           date_obj = Date.parse(date)
#           day = date_obj.day

#           # Determine the correct suffix
#           suffix = case day
#                    when 1, 21, 31 then 'st'
#                    when 2, 22 then 'nd'
#                    when 3, 23 then 'rd'
#                    else 'th'
#                    end

#           # Format the date
#           formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
          
#           # Update the 'Date' field with the formatted date
#           line['Date'] = formatted_date
#       end
#     end
#         rescue ArgumentError
#           puts "Skipping invalid date format: #{date}"
#           next  # Skip this iteration if the date is invalid
#         rescue CSV::MalformedCSVError => e
#           puts "Malformed CSV error in line #{index + 1}: #{e.message}. Skipping this line."
#         rescue => e
#           puts "An unexpected error occurred: #{e.message}"
#         end
      

#       # Write the modified line back to the file
#       file.puts line.to_csv
    
#   end

#   end_time = Time.now
#   puts "Modified"
#   puts "Time taken: #{end_time - start_time} seconds"
# end

# input_file_path = 'sample.csv'
# modify_date_format_in_csv(input_file_path)



# require 'csv'
# require 'date'

# def modify_date_format_in_csv(input_file_path)
#   start_time = Time.now

#   # Open the file for reading and writing
#   File.open(input_file_path, 'r+') do |file|
#     # Read the header
#     header = file.gets # Read the first line (header)
#     file.rewind        # Reset file pointer to the start to overwrite the header

#     # Write the header back to the file
#     file.puts header

#     # Process each line in the file
#     while (line = file.gets) do
#       begin
#         # Parse the CSV line
#         parsed_line = CSV.parse_line(line)
        
#         # Create a hash from the parsed line
#         line_hash = Hash[parsed_line]

#         # Access the 'Date' field
#         date = line_hash['Date']

#         if date
#           begin
#             date_obj = Date.parse(date)
#             day = date_obj.day

#             # Determine the correct suffix
#             suffix = case day
#                      when 1, 21, 31 then 'st'
#                      when 2, 22 then 'nd'
#                      when 3, 23 then 'rd'
#                      else 'th'
#                      end

#             # Format the date
#             formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"

#             # Update the 'Date' field with the formatted date
#             line_hash['Date'] = formatted_date
#           rescue ArgumentError
#             puts "Skipping invalid date format: #{date}. This line remains unchanged."
#             # If the date is invalid, we will write back the original line
#             file.puts line 
#             next
#           end
#         end

#         # Write the modified line back to the file
#         file.puts line_hash.values.to_csv
        
#       rescue CSV::MalformedCSVError => e
#         puts "Malformed CSV error: #{e.message}. This line remains unchanged."
#         file.puts line # Write the original line if there's an error
#       rescue => e
#         puts "An unexpected error occurred: #{e.message}. This line remains unchanged."
#         file.puts line # Write the original line if there's an error
#       end
#     end

#     # Truncate the file to the new length if it has changed
#     file.truncate(file.pos) # Adjust the file size if necessary
#   end

#   end_time = Time.now
#   puts "Modified"
#   puts "Time taken: #{end_time - start_time} seconds"
# end

# input_file_path = 'sample.csv'
# modify_date_format_in_csv(input_file_path)
