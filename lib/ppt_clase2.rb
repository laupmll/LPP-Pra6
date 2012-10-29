#ppt_clase2.rb

class PiedraPapelTijeras
	attr_reader :humano, :maquina, :tiradas, :ganadoras, :resultados, :resultado
	#attr_accessor

	def initialize
		@tiradas = [:piedra, :papel, :tijeras]
		@ganadoras = {:piedra => :papel,  :papel => :tijeras,  :tijeras => :piedra}
		@resultados = [:Ganas, :Pierdes, :Empatas]
	end
	
	def obtener_humano
		@humano = @tiradas.sample
	end
	
	def obtener_maquina
		@maquina = @tiradas.sample
	end

	def jugar
		#puts "-humano: #{@humano}"
		#puts "-maquina: #{@maquina}"
		if (@humano == @maquina)
			@resultado = :Empatas
		elsif (@humano == @ganadoras[@maquina])
			@resultado = :Ganas
		else
			@resultado = :Pierdes
		end
		#puts "-resultado: #{@resultado}"
		return @resultado
	end
end
