puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    stars:        5
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    stars:        4
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

#LEWAGON SOLUTION


Restaurant.destroy_all if Rails.env.development?

Restaurant.create!(
  name: "C'est Bon C'est Belge",
  address: "Rue du Bon-Secours, Brussel",
  phone_number: "+321 23 45 67 89",
  category: "belgian"
)

Restaurant.create!(
  name: "Epicure",
  address: "Faubourg Saint Honoré, Paris",
  phone_number: "+331 23 45 67 89",
  category: "french"
)

Restaurant.create!(
  name: "Ristorante A Mano",
  address: "Strausberger Platz, Berlin",
  phone_number: "+491 23 45 67 89",
  category: "italian"
)

Restaurant.create!(
  name: "Teppanyaki Restaurant Sazanka",
  address: "Ferdinand Bolstraat, Amsterdam",
  phone_number: "+311 23 45 67 89",
  category: "japanese"
)

Restaurant.create!(
  name: "Sichuan Folk",
  address: "Shoreditch, London",
  phone_number: "+441 23 45 67 89",
  category: "chinese"
)
