# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting previous records..."

ProjectInterest.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."

dev = User.create(first_name: "Deve",
  last_name: "Loper",
  email: "dev@mail.com",
  password: "123456",
  password_confirmation: "123456")

dev.photo.attach(io: open("app/assets/images/user1.jpeg"), filename: "user1.jpeg", content_type: 'image/jpeg')

creator = User.create(first_name: "Liliana",
  last_name: "Perez",
  email: "creator@mail.com",
  password: "123456",
  password_confirmation: "123456")

creator.photo.attach(io: open("app/assets/images/user2.jpeg"), filename: "user2.jpeg", content_type: 'image/jpeg')

puts "Creating projects..."

project1 = Project.create(user: creator,
name: "CoProjectWater",
description: "Manos unidas busca consolidar un proyecto que tiene como objetivo favorecer el acceso al agua potable en La Guajira. Con tu ayuda, podemos hacerlo realidad. Necesitamos una plataforma para que podamos promocionar por separado y hablar más de nuestro proyecto para que sea reconocida.",
company: "Manos unidas",
company_description: "Manos unidas es una ONG española que trabaja en estrecha colaboración con 58 países del Sur. Tanto la sede de los Servicios Centrales como la de las 72 delegaciones están ubicadas en España. Manos Unidas NO tiene ni oficinas, ni delegaciones ni directivos fuera del territorio español, salvo excepciones requeridas por el trabajo con organismos oficiales (actualmente en Filipinas, Senegal y Ecuador). Ninguna organización o institución puede alegar que actúa en nombre o por delegación de Manos Unidas fuera de España",
company_website: "https://www.manosunidas.org/",
duration: "80 horas",
technologies: "JavaScript, HTML, CSS, PHP, React"
)

project1.photos.attach(io: open("app/assets/images/project11.jpg"), filename: "project11.jpg", content_type: 'image/jpg')
project1.photos.attach(io: open("app/assets/images/project12.jpg"), filename: "project12.jpg", content_type: 'image/jpg')

project3 = Project.create(user: creator,
  name: "Plataforma del agua",
  description: "Necesitamos construir una herramienta virtual orientada a contribuir y mejorar las políticas y estrategias en torno al Agua en Argentina. Este sistema posibilita acceder -de manera confiable y eficiente- a datos estadísticos, normativas, modelos de gestión, tecnologías y otros insumos para intervenir en los territorios",
  company: "Sed Cero",
  company_description: "El Programa SEDCERO es la acción coordinada de diversos actores sociales para garantizar el acceso a agua segura para consumo, producción y saneamiento en Argentina, Bolivia y Paraguay, especialmente en la región del Gran Chaco Americano. Para ello, el Programa busca incidir en políticas y mejorar las capacidades actuales de resolución de problemas sociales a nivel de políticas, de gestión social y comunitaria.",
  company_website: "http://sedcero.org/",
  duration: "100 horas",
  technologies: "HTML, JS, CSS, SQL, React"
)

project3.photos.attach(io: open("app/assets/images/project31.jpg"), filename: "project31.jpg", content_type: 'image/jpg')
project3.photos.attach(io: open("app/assets/images/project32.png"), filename: "project32.png", content_type: 'image/png')

project4 = Project.create(user: creator,
  name: "Proyecto de Control de Gestión",
  description: "Desarrollar una plataforma de control de gestión entre entidades del Tercer Sector. El control de gestión es un elemento clave en la planificación estratégica de cualquier empresa u organización ya que permite a las entidades orientar su actividad para alcanzar los objetivos previstos en su estrategia",
  company: "Ayuda en acción",
  company_description: "Somos una ONG apartidista y aconfesional que lucha contra la pobreza y la desigualdad. Impulsamos la dignidad y la solidaridad para la construcción de un mundo justo.
  Tenemos más de 38 años de historia. Con tu ayuda hoy trabajamos en 20 países de América Latina, Asia, África y Europa, incluidos España y Portugal. Además, estamos desarrollando nuestra presencia en 3 nuevos países. En total apoyamos a más de 1,4 millones de personas.",
  company_website: "https://ayudaenaccion.org/ong/",
  duration: "90 horas",
  technologies: "JavaScript, HTML, CSS, PHP, ReactJS"
)

project4.photos.attach(io: open("app/assets/images/project41.jpg"), filename: "project41.jpg", content_type: 'image/jpg')
project4.photos.attach(io: open("app/assets/images/project42.png"), filename: "project42.png", content_type: 'image/png')

project5 = Project.create(user: creator,
  name: "Mapeo de bosques",
  description: "Necesitamos una aplicación que integre un mapa que nos permita la gestión de los recursos forestales en argentina, de manera eficiente y rápida. Necesitamos desarrollar una plataforma que nos ayude a alcanzar este objetivo.",
  company: "Arboles sin fronteras",
  company_description: "Somos un grupo interesado en el cuidado del medioambiente.
  Entendiendo que cuidar del medioambiente implica cuidar del hombre , dé las múltiples especies y el único espacio (por ahora) para el desarrollo de la especie humana.
  Somos un grupo heterogéneo, con historias profesionales de dedicación a la salud, al desarrollo organizacional y al ambiente, y con participación voluntaria y profesional en diversas asociaciones civiles.
  Al grupo inicial vienen sumándose voluntarios de distintas ciudades, provincias y áreas del planeta, qué informados de nuestra iniciativa quieren aportar a esta tiempo y conocimientos ,así como ser enriquecidos por el placer de los logros y las nuevas experiencias.",
  company_website: "http://www.arbolessinfronteras.org.ar/",
  duration: "120 horas",
  technologies: "JavaScript, HTML, CSS, PHP, ReactJS"
)

project5.photos.attach(io: open("app/assets/images/project51.jpg"), filename: "project51.jpg", content_type: 'image/jpg')
project5.photos.attach(io: open("app/assets/images/project52.jpeg"), filename: "project52.jpeg", content_type: 'image/jpeg')

project6 = Project.create(user:creator,
  name: "Campaña de concientización",
  description: "Construcción de una landing que nos permita difundir nuestras causas, generando conciencia sobre las condiciones en las que trabajan los mineros, a menudo olvidados.",
  company: "No a la mina",
  company_description: "Somos una ong del tramo argentino de la Cordillera de los Andes. nuestra principal reivindicación, es la oposición a la minería de gran escala a cielo abierto (llamada megaminería en Argentina) por los efectos que tiene sobre su modo tradicional de vida y su medio ambiente.",
  company_website: "https://noalamina.org/",
  duration: "20 horas",
  technologies: "HTML, CSS, PHP, ReactJS"
)

project6.photos.attach(io: open("app/assets/images/project61.jpg"), filename: "project61.jpg", content_type: 'image/jpg')
project6.photos.attach(io: open("app/assets/images/project62.jpg"), filename: "project62.jpg", content_type: 'image/jpg')

project7 = Project.create(user: creator,
  name: "Integración Donación Mercado pago",
  description: "Para impulsar aún más las campañas de donación, necesitamos una nueva funcionalidad que permita a los donantes generar un link de pago desde nuestra web a mercado pago. Esta nueva herramienta busca facilitar incursionar en las donaciones de manera digital. ",
  company: "Techo",
  company_description: "Somos una organización presente en 19 países de América Latina, que busca superar la situación de pobreza que viven millones de personas en asentamientos populares, a través de la acción conjunta de sus habitantes y jóvenes voluntarios y voluntarias.",
  company_website: "https://www.techo.org/",
  duration: "40 horas",
  technologies: "HTML, CSS, PHP",
)

project7.photos.attach(io: open("app/assets/images/project71.jpeg"), filename: "project71.jpeg", content_type: 'image/jpeg')
project7.photos.attach(io: open("app/assets/images/project72.png"), filename: "project72.png", content_type: 'image/png')

project2 = Project.create(user: creator,
  name: "Comunicación Manos Unidas",
  description: "Plataforma que busca unir más al equipo de ONG creando espacios de trabajo, chat en equipo, videoconferencias, administración de documentos, grupos de extranet para usuarios externos y colaboración por correo electrónico",
  company: "Manos Unidas",
  company_description: "Manos unidas es una ONG española que trabaja en estrecha colaboración con 58 países del Sur. Tanto la sede de los Servicios Centrales como la de las 72 delegaciones están ubicadas en España. Manos Unidas NO tiene ni oficinas, ni delegaciones ni directivos fuera del territorio español, salvo excepciones requeridas por el trabajo con organismos oficiales (actualmente en Filipinas, Senegal y Ecuador). Ninguna organización o institución puede alegar que actúa en nombre o por delegación de Manos Unidas fuera de España",
  company_website: "https://www.manosunidas.org/",
  duration: "60 horas",
  technologies: "HTML, JS, CSS, SQL, React"
)

project2.photos.attach(io: open("app/assets/images/project21.jpg"), filename: "project21.jpg", content_type: 'image/jpg')
project2.photos.attach(io: open("app/assets/images/project22.jpg"), filename: "project22.jpg", content_type: 'image/jpg')
