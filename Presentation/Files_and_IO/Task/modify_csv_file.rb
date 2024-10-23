require 'csv'
require 'date'

def modify_date_format_in_csv(input_file_path)  
  start_time = Time.now
  File.open(input_file_path,'r+') do |file|
    process_csv(file, input_file_path)     
  end
  puts "Modified"
  end_time = Time.now
  puts end_time - start_time
end

def process_csv(file, input_file_path)
  headers_written = false
  line_number = 0
  begin
    CSV.foreach(input_file_path, headers: true).with_index do |line, index| 
      line_number = index + 2   
      write_headers(file, line,headers_written)
      headers_written = true
      process_line(file, line, line_number)
    end
  rescue CSV::MalformedCSVError => e
    puts "Malformed CSV error in line. Skipping line no #{line_number}"
  end
end

def write_headers(file, line, headers_written)
  unless headers_written
    file.puts line.headers.to_csv
 end
end

def process_line(file, line, line_number)
  date = line['Date']      
    if date
      formatted_date = format_date(date, line_number)
      line['Date'] = formatted_date if formatted_date
    end  
    file.puts line.to_csv
end

def format_date(date, line_number)
  begin
    date_obj = Date.parse(date)
    day = date_obj.day
    suffix = determine_day_suffix(day)
    formatted_date = "#{day}#{suffix} #{date_obj.strftime('%B %Y')}"
    return formatted_date    
  rescue ArgumentError
    puts "Skipping invalid date format: #{date} in line #{line_number}"
    return nil
  rescue => e
    puts "An unexpected error occurred: #{e.message} in line #{line_number}"
    return nil
  end
end

def determine_day_suffix(day)
  case day
  when 1, 21, 31 then 'st'
  when 2, 22 then 'nd'
  when 3, 23 then 'rd'
  else 'th'
  end
end

input_file_path = 'large_file.csv'
modify_date_format_in_csv(input_file_path)
