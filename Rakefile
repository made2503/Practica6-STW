desc "Aplicación"
task :default => :server

desc "Servidor"
task :server do
  sh "bundle exec rackup"
end

desc "Ejecutar todas las Pruebas Unitarias"
task :test do 
	sh "ruby -Ilib test/test_rps.rb"
end

desc "Ejecutar los Test Rspec"
task :spec do 
	sh "rspec --color --format documentation spec/rsack/server_spec.rb"
end

desc "Ejecutar los Test Rspec y salida en página HTML"
task :spech do 
	sh "rspec --format html spec/rsack/server_spec.rb"
end