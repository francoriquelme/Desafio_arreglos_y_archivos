# Se tiene un archivo notas.data con las notas de un curso.
# Javiera,9,5,3,9
# Francisca,8,3,5,5
# Juan,9,5,5,9
# Pedro,5,4,6,8
# Cecilia,8,7,8,8

# Se pide:
# Crear un archivo llamado calculo_notas.rb.
# Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
# que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno.

def notas_mas_alta (leer_notas)
    
end
#leer archivos
data = open("notas.data").readlines
archivo_data = []
archivo_data = data.map do |e|
    e.split (",")
end
puts