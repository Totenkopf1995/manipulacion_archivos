puts "Ingresa el nombre del archivo: "
nombre_archivo = gets.chomp

puts "Ingresa el contenido de texto: "
contenido = gets.chomp

# Verifica si el archivo existe y decide si se sobrescribe o se agrega contenido
if File.exist?(nombre_archivo)
  puts "El archivo #{nombre_archivo} ya existe."
  # Escribe y agrega el contenido al archivo
  puts "deseas sobreescribir (s) o agregar contenido (a)"
  sobreescribir_agregar = gets.chomp

  if sobreescribir_agregar ==  's'

    File.open(nombre_archivo, "w") do |file|
      file.write(contenido)
    end

    puts "se sobreescribio el archivo #{nombre_archivo}"
  elsif sobreescribir_agregar == 'a'

    File.open(nombre_archivo, "a") do |file|
      file.write(contenido)
    end

    puts "se agrego el contenido al archivo #{nombre_archivo}"
  end
else
  #crea el archivo
  File.open(nombre_archivo, "w") do |file|
    file.write(contenido)
  end

end

# Lee y muestra el contenido del archivo y lo cierra
f = File.open(nombre_archivo, mode: 'r')
f.each_line do |line|
  puts line
end
f.close


