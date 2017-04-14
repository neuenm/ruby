# encoding: UTF-8
def hola
	puts "Hola mundo"
end

def holaNombre
	puts "cual es tu nombre"
	nombre= gets.chomp
	puts  "hola"+nombre
end

def sumHastaUnNum
	puts "elegi un numero"
	fin=gets.to_i
	i=0
	suma=0
	while i<fin do
	 i=i+1
	 suma=suma+i
	end
	puts suma
end

def sumaMultiplos
	puts "elegi un numero"
	fin=gets.to_i
	i=0
	suma=0
		while i<fin do
			 i=i+1
			 if (i%3)==0 and (i%5)==0
			 	suma=suma+i
			 end
		end
puts suma
end

def marceloOClaudia
	puts "Sos marcelo o claudia"
	nombre=gets.chomp

	if (nombre!="marcelo" and nombre !="claudia")
		puts "No te conozco"
	else
		puts "Hola" + nombre
	end
end

def empiezaConR
	array1=['rambo', 'ruido', 'ruby']
	array2=['razon', 'sazon', 'calzon']
	i=0
	while i< array1.length do
		palabra=array1[i]
		if palabra[0]!="r"
			mensaje= "hay una palabra no empieza con r"
			i=array1.length
		else
			i=i+1
			mensaje= "Todas empiezan con r"
		end
	end
	puts mensaje
end

def empiezaConBa
	array1=['anana', 'banana', 'manzana']
	array2=['banana', 'banana', 'balanza']
	i=0
	array=array1|array2
	while i< array.length do
		palabra=array[i]
		if palabra[0]=="b" and palabra[1]=="a"
			mensaje= "la primer palabra que empieza con BA es #{palabra}"
			i=array.length
		end
	end
	puts mensaje
end

def mayorDelArray
	desordenado=[5,7,4,8,55,22,33,666,88,77]
	mayor=0
	desordenado.each do |nro|
	    if nro>mayor
	    	mayor=nro
	    end
	end
	puts "el numero mas grande es:"
	puts mayor
end

def adivinanza
	puts ("Entre cuantos numeros queres adivianr??")
	numeroMAximo=gets.to_i
	secreto=rand(numeroMAximo)
	intentos=1
	numero=numeroMAximo+1
	ingresados=Array.new


	puts "En que numero estoy penssando? es un numero menor a #{numeroMAximo}"
	while numero != secreto
		numero= gets.to_i
		if ingresados.include? numero
			puts "Ya dijiste ese numero, proba con otro"
		else
			ingresados.push(numero)
			if numero>secreto
				puts "El numero que estoy pensando es mas chico"
				intentos=intentos+1
			elsif numero<secreto
				puts "El numero que estoy pensando es mas grande"
				intentos=intentos+1
			end
		end
	end
	puts "Joya, el numero era el #{ingresados[-1]}...  Le pegaste en el #{intentos}° intento"
end


############################################################################
opcion=0
while opcion<9 do
	puts "Elegi la funcion que quieras."
	puts"
	1- Hola mundo
	2-Hola tu nombre
	3-Suma hasta el numero que elegis
	4-Suma los multiplos de 3 y de 5 en comun hasta el numero que elegis
	5-Te saludo si te llamas marcelo o claudia
	6-Verifica si las palabras de un aarray empiezan todas con R
	7-Verifica si las palabras de un aarray empiezan todas con BA
	8-Devuelve el mayor numero de un array
	9- Juego de adivinanza
	10 o > - SALIR"



	opcion=gets.to_i
	case opcion
		when 1 
			puts hola 
		when 2
			puts holaNombre
		when 3
			puts sumHastaUnNum
		when 4
			puts sumaMultiplos
		when 5 
			puts marceloOClaudia
		when 6 
			puts empiezaConR
		when 7
			puts empiezaConBa
		when 8
			puts mayorDelArray
		when 9
			puts adivinanza
	end
end