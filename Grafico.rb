# Crear el archivo grafico.rb utilizando el método chart, que construya el siguiente gráfico
# en la consola, a partir de un arreglo con datos numéricos.
# ➜ irb
# 2.6.0 :001 > require_relative "grafico"
# => true
# 2.6.0 :002 > chart([5, 3, 2, 5, 10])
# |**********
# |******
# |****
# |**********
# |********************
# >--------------------
# 1 2 3 4 5 6 7 8 9 10

# Tips:
# ● Por cada dato del arreglo, se debe imprimir un | y una cantidad de *
# equivalente al número.
# ● Una solución más avanzada podría ajustar la cantidad de * a mostrar
# por cada número. La solución inicial debe multiplicar 2 * por cada número, ejemplo si
# arreglo[0] = 3, implica ******.
# ● Es importante encontrar el número máximo.

arreglo=[5, 3, 2, 5, 10]
def chart(arr)
    arr.map do |elemento|
        print "|"
        (2*elemento).times do |i|
            print "*"
        end
        print "\n"
    end
end

chart(arreglo)


