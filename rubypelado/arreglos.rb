array1=['rambo', 'ruido', 'ruby']
array2=['razon', 'sazon', 'calzon']
i=0
while i< array1.length do
	palabra=array1[i]
	if palabra[0]!="r"
		mensaje= "hay una palabra no empieza con r"
		i=array1.length
		exit=true
	else
		i=i+1
		mensaje= "Todas empiezan con r"
	end
end

puts mensaje
