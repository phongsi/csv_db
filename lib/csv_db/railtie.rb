require 'csv_db'
require 'rails'
module CsvDb
  class Railtie < Rails::Railtie
    railtie_name :csv_db

    rake_tasks do
      load "tasks/csv_db.rake"
    end
  end
end
