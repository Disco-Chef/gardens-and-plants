Garden.destroy_all if Rails.env.development?

secret = Garden.create!(
  name: "The Secret Garden",
  banner_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F66.media.tumblr.com%2F72d2ab93adc3110ef139fad76db35432%2Ftumblr_p83yks3xCc1wg8mk1o1_1280.jpg"
)

botanique = Garden.create!(
  name: "Botanique",
  banner_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fs3-eu-west-1.amazonaws.com%2Fbrussels-images%2Fcontent%2Fgallery%2Fvisit%2Fplace%2FLe-Botanique-and-its-gardens_63_sq.jpg"
)

little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: secret
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: botanique
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: little
)
