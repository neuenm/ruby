desordenado=[5,7,4,8,55,22,33,666,88,77]
mayor=0
desordenado.each do |nro|
    if nro>mayor
    	mayor=nro
    end
end
puts "el numero mas grande es:"
puts mayor