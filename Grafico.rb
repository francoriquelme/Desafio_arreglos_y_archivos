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


def chart (arr)
    #Se obtiene el largo del array
    n = arr.count

    #ciclos para recorres el array e imprimir * por el valor dentro del array
    n.times do |i|
        print "|"
        arr[i].times do |j|
            print "**"
        end
        print "\n"
    end

    #Se obtiene el maximo del array
    maximo = arr.max

    #Se imprimen las ultimas lineas
    print ">"
    maximo.times do |m|
        print "--"
    end
    print "\n"

    #Se imprimen los números de la base
    maximo.times do |c|
        print "#{c+1} "
    end
    print "\n"
end



print chart([5, 3, 2, 5, 10])


























# Otras formas de hacerlo

# arreglo=[5, 3, 2, 5, 10]
# def chart(arr)
#     arr.map do |elemento|
#         print "|"
#         (2*elemento).times do |i|
#             print "*"
#         end
#         print "\n"
#     end
# end

# chart(arreglo)


# datos = [5,6,2,9,10]

# datos.map do |e|
#     var =''
#     e.times do
#         var += '*'
#     end
# puts "| " + var
# end
