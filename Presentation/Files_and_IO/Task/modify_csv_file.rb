require 'csv'
require 'date'

@count = 0

def modify_date_format_in_csv(input_file_path)
  
  start_time = Time.now
  File.open(input_file_path,'r+') do |file|
    
  begin
  CSV.foreach(input_file_path, headers: true) do |line|
    
     if @count == 0
        file.puts line.headers.to_csv
        @count += 1
     end
   
    date = line['Date']
    
    if date
      begin
      date_obj = Date.parse(date)
      day = date_obj.day

      suffix = case day
               when 1, 21, 31 then 'st'
               when 2, 22 then 'nd'
               when 3, 23 then 'rd'
               else 'th'
               end

      formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
      
      line['Date'] = formatted_date
      rescue ArgumentError
        puts "Skipping invalid date format: #{date} in line #{index + 1}"
      rescue CSV::MalformedCSVError => e
        puts "Malformed CSV error in line #{index + 1}: #{e.message}. Skipping this line."
      rescue => e
        puts "An unexpected error occurred: #{e.message} in line #{index + 1}"
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