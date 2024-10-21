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
#   # Open the CSV and parse each row
#   CSV.open(input_file_path,'r+') do |file|
#     count = 0
#   CSV.foreach(input_file_path, headers: true) do |line|
#     # puts line # This will print each row as a hash
#     if count == 0
#       file.puts line.headers.to_csv
#       count += 1
#     end
#     # Access the 'Date' field
#     date = line['Date']
    
#     if date
#       date_obj = Date.parse(date)
#       day = date_obj.day

#       # Determine the correct suffix
#       suffix = case day
#                when 1, 21, 31 then 'st'
#                when 2, 22 then 'nd'
#                when 3, 23 then 'rd'
#                else 'th'
#                end

#       # Format the date
#       formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
      
#       # Update the 'Date' field with the formatted date
#       line['Date'] = formatted_date
#     end

#     # puts line # Print the modified line
#     file.puts line.to_csv
#   end
# end
# end

# input_file_path = 'file.csv'
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
