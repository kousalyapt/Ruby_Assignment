require 'date'
require 'csv'


def create_large_csv_file_by_rows(file_path, total_rows)

  File.open(file_path, 'w') do |file|
    
    file.puts("ID,Name,Date")

    id = 1
    start_time = Time.now
    while id <= total_rows
      
      random_date = Date.today - rand(1..365)
    
      file.puts("#{id},Name_#{id},#{random_date}")
      id += 1
    end
    end_time  = Time.now
    puts end_time - start_time 
  end

  puts "Created CSV file: #{file_path} with #{total_rows} rows."
end

create_large_csv_file_by_rows('large_file.csv', 5_000_000)





