# Code by Phong Si
# adds the csv_to_db and db_to_csv tasks to your rails app
module CsvDb
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "tasks/csv_db.rake"
    end
  end
end
