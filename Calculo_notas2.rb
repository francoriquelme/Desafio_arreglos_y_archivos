# Se pide:
# ● Crear un archivo llamado calculo_notas2.rb.
# ● Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.

#abrir el archivo
data = open('notas.data').readlines

#información obtenida del archivo
#["Javiera,9,5,3,9\r\n", "Francisca,8,3,5,5\r\n", "Juan,9,5,5,9\r\n", "Pedro,5,4,6,8\r\n", "Cecilia,8,7,8,8"]

#Se hace un split para separar la información
data = data.map do |i|
    i.split(',')
end

#Se define un metodo para cambiar a enteros
def cambiar_enteros (arr)
    arr2 = arr.map do |j|
        j.to_i
    end
    return arr2
end

#se define el método

def nota_mas_alta(arr)
    #Se cambian los nombres por numeros 0
    n = arr.count
    n.times do |i|
        5.times do |j|
            if arr[i][j] == arr[i][0]
                arr[i][j] = 0
            end
        end
    end

    #Se cambia todo a enteros y se guarda en un nuevo array
    arr2 = []
    n.times do |i|
        arr2 << cambiar_enteros(arr[i])
    end

    

    #Se reccore el array para encontrar la nota máxima en cada alumno
    arr3 = []
    n.times do |i|
        arr3 << arr2[i].max
    end

    return arr3

end

print nota_mas_alta(data)
puts