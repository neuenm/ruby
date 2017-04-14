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