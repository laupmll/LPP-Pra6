#ppt_main.rb

#require "../lib/ppt_clase2.rb"
require "ppt_clase2.rb"

ppt = PiedraPapelTijeras.new
ppt.obtener_humano
puts "\n"
puts "humano: #{ppt.humano}"
ppt.obtener_maquina
puts "maquina: #{ppt.maquina}"
puts ppt.jugar
