# encoding: UTF-8
require 'sinatra'
get '/hola' do
  p "hola mundo"
end


require 'sinatra'
get '/hola/:nombre' do
  nombre=params[:nombre]        
  p"hola "+nombre
end


require 'sinatra'
get '/sumahasta/:nro' do
	fin=params[:nro].to_i
	i=0
	suma=0
	while i<fin do
	 i=i+1
	 suma=suma+i
	end
	return "La suma de los numeros entre 0 hasta #{fin} es #{suma}"
end


require 'sinatra'
get '/sumahastamultiplos/:nro' do
	fin=params[:nro].to_i
	i=0
	suma=0
	while i<fin do
			 i=i+1
			 if (i%3)==0 and (i%5)==0
			 	suma=suma+i
			 end
		end
	return "La suma de los numeros entre 0 hasta #{fin} y multiplos de 3 y de 5 es #{suma}"
end


require 'sinatra'
get '/marceloclaudia/:nombre' do
  nombre=params[:nombre] 
  if (nombre.upcase=="MARCELO" ||  nombre.upcase=="CLAUDIA")      
  	p"hola "+nombre
  else
  	p "yo solo saludo a marcelo o a claudia"
  end
end






require "sinatra"
get "/empiezaconr" do
	array1=['rambo', 'ruido', 'ruby']
	array2=['razon', 'razon', 'ralzon']
	array= array1+array2
	i=0
	while i< array.length do
		palabra=array[i]
		if palabra[0]!="r"
			mensaje= "hay una palabra no empieza con r"
			i=array.length
		else
			i=i+1
			mensaje= "Todas empiezan con r"
		end
	end
	return "#{mensaje}"
end

require "sinatra" 
get "/ba" do
	array1=['anana', 'banana', 'manzana']
	array2=['banana', 'perro', 'balanza']
	array= array1+array2
	i=0
	while i< array.length do
		palabra=array[i]
		if palabra[0]=="b" and palabra[1]=="a"
			mensaje= "la primer palabra que empieza con BA es #{palabra}"
			i=array.length
		end
	end
	return "#{mensaje}"
end

require "sinatra"
get "/mayor" do
	desordenado=[5,7,4,8,55,22,33,666,88,77]
	mayor=0
	desordenado.each do |nro|
	    if nro>mayor
	    	mayor=nro
	    end
	end
	return "el numero mas grande es: #{mayor}"
end
