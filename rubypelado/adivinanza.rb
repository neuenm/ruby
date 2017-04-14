# encoding: UTF-8
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