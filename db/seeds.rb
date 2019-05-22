# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '04 45 68 36 89',
    category: 'chinese',
    review:  'trop cool'

  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '06 78 35 46 76',
    category:    'italian',
    review:        'délicieux'
  },
  {
    name:         'DoMac',
    address:      'Castellane',
    phone_number:  '02 94 95 93 24',
    category: 'japanese',
    review:  'A chier'

  },
  {
    name:         'West coast Pizz',
    address:      'Rue Paradis',
    phone_number:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category:    'french',
    review:        'Trop bon'
  },
  {
    name:         'Gamin?',
    address:      'vieux port',
    phone_number:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    category: 'belgian',
    review:  'bof'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
