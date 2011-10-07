require 'csv'

namespace :db do
  task :db_to_csv => :environment do
    model_dir = Dir['**/models/**/*.rb'].detect {|f| ENV['model'] == File.basename(f, '.*').camelize}
    if !model_dir.eql?(nil)    
      table = File.basename(model_dir, '.*').camelize.constantize
      objects = table.all
      CSV.open("./db/db_to_csv/#{table}.csv", "wb") do |csv|
        csv << table.column_names
        row = Array.new
        objects.each do |obj|
          table.column_names.each do |col|
            row << obj[col]
          end
          csv << row
          row.clear
        end
      end
    else
      puts "Table #{ENV['model']} could not be found"
    end
  end
  task :csv_to_db => :environment do
    model = ENV['csv'].constantize
    columns = Array.new
    CSV.foreach("./db/csv_to_db/#{ENV['csv']}.csv", :headers => :first_row, :return_headers => true) do |row|
      if row.header_row?()
        columns = row
      else
        temp = model.new
        (0...row.size).each do |col|
          temp[columns[col]] = row[col]
        end
        temp.save!
      end
    end
  end
end
