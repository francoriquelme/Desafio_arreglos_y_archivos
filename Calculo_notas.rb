# Se tiene un archivo notas.data con las siguientes notas de un curso.
# Javiera,9,5,3,9
# Francisca,8,3,5,5
# Juan,9,5,5,9
# Pedro,5,4,6,8
# Cecilia,8,7,8,8

# Se pide:
# ● Crear un archivo llamado calculo_notas2.rb.
# ● Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.

# leer archivos
data = open("notas.data").readlines
data = data.map do |e|
    e.split(",")
end

def notas_mas_alta (leer_notas)
    notas = []
    leer_notas.each_with_index do |element, index|
        # Javiera,9,5,3,9
        next if index == 0
        notas << element.to_i
    end

#notas = [9,5,3,9]
    print notas.max
end

print notas_mas_alta(data[1])
