
puts " \n \n        Bienvenido"

def borrar
  puts "\e[H\e[2J"
end

def registro


  registro = File.open('archivo.csv', 'w')

  registro.close

end

def archivo
  file = File.open('formato.csv', 'r')
  archivo = file.readlines.map(&:chomp)
end

def resumen
  archivo.each do |estudiante|
    estudiante = estudiante.delete(' ').split(',')
     registro.puts(estudiante[0])
    estudiante.each_with_index do |notas, i|

    end
  end

end

def inasistencias
  suma = 0
  archivo.each do |estudiante|
    estudiante = estudiante.delete(' ').split(',')
    estudiante.each do |notas|
      suma = suma + notas.count("A")

    end
  end
  print " \n \n Inasistencias totales: " + suma.to_s + "\n \n"
end


def aprobados(nota = 5)
  puts  'generado'
end



opcion = 1
while opcion <= 3 && opcion >=1

  puts  " \n \n
  \n 1- Generar archivo
  \n 2- Inasistencias totales
  \n 3- Alumnos aprobados
  \n 4- Salir \n \n \n"


  opcion = gets.chomp.to_i
  borrar

  if opcion == 1
    resumen

  elsif opcion == 2
    inasistencias

  elsif opcion == 4
    exit
  else
    borrar
    opcion = 1
    puts "\n Porfavor ingresa una opcion valida, ingresa un caracter para continuar "
    gets.chomp
    next

  end

  puts "1.Menu
        \n 2.Salir"

  opcion = gets.chomp.to_i
  if opcion == 2
    opcion = 4
  end

  borrar

end
