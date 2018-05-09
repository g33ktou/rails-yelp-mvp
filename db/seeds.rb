puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'naka',
    address:      '7 Boundary St, Marseille E2 7JE',
    phone_number:  '0458347861',
    category:      'japanese'

  },
  {
    name:         'piati caldo',
    address:      '56A Shoreditch High St, Roma E1 6PQ',
    phone_number:  '0356842790',
    category:       'italian',

  },
  {
    name:         'chez zouzou',
    address:      '56A Shoreditch High St, Marseille E1 6PQ',
    phone_number:  '0356632790',
    category:      'french'

  },
  {
      name:       'zhang zi',
    address:      '56A Shoreditch High St, Tokyo E1 6PQ',
    phone_number:  '0954842790',
    category:      'chinese'

  },
  {
    name:         'la baraque de polo',
    address:      '56A Shoreditch High St, bruxelle E1 6PQ',
    phone_number:  '0652142790',
    category:      'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
