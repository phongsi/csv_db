require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('csv_db', '1.0.2') do |p|
  p.description    = "Backup a db table to a csv or push csv content to a database table"
  p.url            = "http://github.com/phongsi/csv_db"
  p.author         = "Phong Si"
  p.email          = "phong.si@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
  p.require_signed = true
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
