array1=['anana', 'banana', 'manzana']
array2=['banana', 'banana', 'balanza']
i=0
while i< array1.length do
	palabra=array2[i]
	if palabra[0]!="b" and palabra[1]!="a"
		mensaje= "hay una palabra no empieza con ba"
		i=array1.length
		exit=true
	else
		i=i+1
		mensaje= "Todas empiezan con ba"
	end
end
puts mensaje