#Rakefile

task :default => :test

desc "Ejecuta el fichero ejecutable ppt_main que usa la clase en ppt_clase2.rb"
task :bin do
  sh "ruby -Ilib bin/ppt_main.rb"
end

#Run tests with --format documentation 
desc "Pruebas con rspec para ppt_clase2.rb. Ejecuta spec/ppt_spec.rb en formato muestra it"
task :test do	#rspec
  #sh "rspec -Ilib spec/ppt_spec.rb" 
  sh "rspec -Ilib spec/ppt_spec.rb --format documentation" 
  #sh "ruby -Ilib bin/main_ppt.rb tijeras"
end

desc "Pruebas con rspec para ppt_clase2.rb. Ejecuta spec/ppt_spec.rb en formato html"
task :thtml do
   sh "rspec -Ilib spec/ppt_spec.rb --format html" 
end

