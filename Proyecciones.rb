# El desafío consiste en hacer 2 simulaciones.
# ● Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.
# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.
# El resultado debe ser presentado en un archivo llamado resultados.data. Los datos deben
# contener máximo 2 decimales y estar cada uno en una sola línea.
# Uso:
# ruby proyecciones.rb
# Ejemplo de formato del contenido del archivo resultados.data.
# // Estos valores son referenciales
# 231231.32
# 879879.43

# 1.- Son 12 meses, de los cuales, el primer tercio (enero-febrero-marzo)
#aumentó sus ventas un 10%
# 2.- El último tercio, octubre-noviembre-diciembre incrementó sus ventas un 20%

data = open('ventas_base.db').read.split(',')
data_float = data.map do |e|
    e.to_f
    end
quarter1 = (data_float[0..2].sum) * 1.1
quarter2 = data_float[3..5].sum
quarter3 = data_float[6..8].sum
quarter4 = (data_float[9..11].sum) * 1.2

half1 = (quarter1 + quarter2).round(2)
half2 = (quarter3 + quarter4).round(2)
sales = [half1, half2].join("\n")
File.write("resultados.data",sales)