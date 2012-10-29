#ppt_spec.rb

require "ppt_clase2.rb"

describe PiedraPapelTijeras do	#debe haber una clase
	before :each do
		@ppt = PiedraPapelTijeras.new	#declaramos un objeto de la clase
	end
	
	it "Debe tener una tirada para el humano" do
		@ppt.humano
	end
	
	it "Debe tener una tirada para la maquina" do
		@ppt.maquina
	end
	
	it "Debe existir una lista de tiradas validas" do
		@ppt.tiradas.should == [:piedra, :papel, :tijeras]
	end
	
	it "Debe existir una lista de jugadas y quien gana" do
		@ppt.ganadoras.should == {:piedra => :papel,  :papel => :tijeras,  :tijeras => :piedra}
	end
	
	it "El metodo obtener_humano debe devolver una tirada valida" do
		temp = @ppt.obtener_humano 
		@ppt.tiradas.include?temp
	end
	
	it "El metodo obtener_maquina debe devolver una tirada valida" do
		temp = @ppt.obtener_maquina 
		@ppt.tiradas.include?(temp).should == true
	end
	
	it "Debe existir una lista de resultados de un juego, desde el punto de vista de la maquina" do
		@ppt.resultados.should == [:Ganas, :Pierdes, :Empatas]
	end
	
	it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
		temp = @ppt.resultado
	end

	it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
		temp = @ppt.jugar
		@ppt.resultados.include?(temp).should == true
	end

	it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
		resultados = []
		30.times do
			resultados.push @ppt.obtener_maquina	#push añade piedra, papel o tijeras al vector resultados
		end
		#puts "resultados.uniq.length = #{resultados.uniq.length}, resultados.length = #{resultados.length}"
		#puts resultados.join(' ')
		resultados.uniq.length.should == 3	#uniq.length devuelve el tamaño del vector, eliminando los elementos duplicados
	end	
	
	it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma" do
		resultados = []
		30.times do
			@ppt.obtener_humano
			@ppt.obtener_maquina	
			#puts @ppt.humano
			#puts @ppt.maquina
			resultados.push @ppt.jugar	#push añade piedra, papel o tijeras al vector resultados
		end
		#puts "resultados.uniq.length = #{resultados.uniq.length}, resultados.length = #{resultados.length}"
		#puts resultados.join(' ')	#Empatas Ganas Pierdes Ganas ...
		resultados.uniq.length.should == 3	#uniq.length devuelve el tamaño del vector, eliminando los elementos duplicados
	end
end


