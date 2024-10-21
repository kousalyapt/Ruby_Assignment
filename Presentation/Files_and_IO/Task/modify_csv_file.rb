require 'csv'
require 'date'

def modify_date_format_in_csv(input_file_path)
  start_time = Time.now
  csv_content = CSV.read(input_file_path, headers: true)

  File.open(input_file_path, 'w') do |file|
    
    file.puts csv_content.headers.to_csv

    csv_content.each do |row|
    
      date = row['Date']
      
      if date
        date_obj = Date.parse(date)
        day = date_obj.day

        suffix = case day
                 when 1, 21, 31 then 'st'
                 when 2, 22 then 'nd'
                 when 3, 23 then 'rd'
                 else 'th'
                 end

        formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
        
        row['Date'] = formatted_date
      end

      file.puts row.to_csv
    end
  end
end_time = Time.now
puts end_time - start_time
  puts "Modified CSV file at: #{input_file_path}"
end

input_file_path = 'large_file.csv'
modify_date_format_in_csv(input_file_path)


#606.7269623 secs