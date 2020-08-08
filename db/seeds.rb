# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating users..."

carlos = User.create(first_name: "Carlos",
  last_name: "Juarez",
  email: "carlos@mail.com",
  password: "123456",
  password_confirmation: "123456")

carlos.photo.attach(io: open("app/assets/images/user1.jpeg"), filename: "user1.jpeg", content_type: 'image/jpeg')

liliana = User.create(first_name: "Liliana",
  last_name: "Perez",
  email: "liliana@mail.com",
  password: "123456",
  password_confirmation: "123456")

liliana.photo.attach(io: open("app/assets/images/user2.jpeg"), filename: "user2.jpeg", content_type: 'image/jpeg')

puts "Creating projects"

5.times do

Project.create(user: carlos,
  name: "Bubu nana bubu lina",
  description: "TTRR works with individuals with a variety of backgrounds, particularly those with experience in private equity, management consulting, investment banking, or venture capital. We talk to all candidates individually to understand their interests and priorities for their next role and work hard to set them up for success in interviews and beyond. Our hope is to develop long-term relationships with all candidates to help them find their ideal roles both now and in the future.",
  company: "Red Solidaria",
  company_description: "La Fundación Redes Solidarias nació gracias a la asociación de buenas voluntades, seres unidos para actuar sin fines de lucro como un puente de ayuda entre los más necesitados y los que pueden y quieren ayudarlos.

  Desde 1996 lleva ayuda a las comunidades indígenas aisladas del Chaco salteño en el Municipio de Santa Victoria Este, Provincia de Salta.

  Trabajamos con programas educativos, mejoras edilicias y equipamiento para escuelas, proyectos de auto construcción de viviendas y huertas familiares.

  Esta abierta la inscripción para el Programa de Voluntariado Manos Solidarias en la Comunidad La Estrella, PARTICIPA!",
  company_website: "https://www.redes-solidarias.org.ar",
  duration: "40 hours",
  technologies: "HTML, JS, CSS, SQL")

Project.create(user: liliana,
  name: "This is another project",
  description: "TTRR works with individuals with a variety of backgrounds, particularly those with experience in private equity, management consulting, investment banking, or venture capital. We talk to all candidates individually to understand their interests and priorities for their next role and work hard to set them up for success in interviews and beyond. Our hope is to develop long-term relationships with all candidates to help them find their ideal roles both now and in the future.",
  company: "Fundación Si",
  company_description: "UN VOLUNTARIO ES AQUELLA PERSONA QUE ENCONTRÓ
    UNA CAUSA POR QUÉ LUCHAR; SE ANIMÓ, ARRIESGÓ
    Y ESTÁ TRABAJANDO POR ELLA...
    NO HAY NADA QUE PUEDA CONTRA
    LA PASIÓN DE UN VOLUNTARIO.",
  company_website: "https://fundacionsi.org.ar/",
  duration: "35 hours",
  technologies: "React, SQL")

end
