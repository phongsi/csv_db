# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "csv_db"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Phong Si"]
  s.cert_chain = ["/media/share/gem-public_cert.pem"]
  s.date = "2011-10-07"
  s.description = "Backup a db table to a csv or push csv content to a db table"
  s.email = "phong.si@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/csv_db_task.rb", "lib/tasks/csv_db.rake"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/csv_db_task.rb", "lib/tasks/csv_db.rake", "csv_db.gemspec"]
  s.homepage = "http://github.com/phongsi/csv_db"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Csv_db", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "csv_db"
  s.rubygems_version = "1.8.11"
  s.signing_key = "/media/share/gem-private_key.pem"
  s.summary = "Backup a db table to a csv or push csv content to a db table"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
