frozen_string_literal: true

User.create!(name: 'winery', email: 'vino@example.com')

wineries = [
  {
    name: 'Antinori',
    location: 'Tuscany'
  },
  {
    name: 'Barolo',
    location: 'Piedmont'
  },
  {
    name: 'Brunello di Montalcino',
    location: 'Tuscany'
  },
  {
    name: 'Frescobaldi',
    location: 'Tuscany'
  },
  {
    name: 'Gaja',
    location: 'Piedmont'
  },
  {
    name: 'Sagrantino di Montefalco',
    location: 'Umbria'
  }
]

Create some wines.

wines = [
  {
    name: 'Tignanello',
    winery_id: 1,
    vintage: 2018,
    wine_type: 'Red',
    grape: 'Sangiovese',
    country: 'Italy',
    region: 'Tuscany'
  },
  {
    name: 'Barolo',
    winery_id: 2,
    vintage: 2017,
    wine_type: 'Red',
    grape: 'Nebbiolo',
    country: 'Italy',
    region: 'Piedmont'
  },
  {
    name: 'Brunello di Montalcino',
    winery_id: 3,
    vintage: 2016,
    wine_type: 'Red',
    grape: 'Sangiovese',
    country: 'Italy',
    region: 'Tuscany'
  },
  {
    name: 'Sassicaia',
    winery_id: 5,
    vintage: 2015,
    wine_type: 'Red',
    grape: 'Cabernet Sauvignon',
    country: 'Italy',
    region: 'Tuscany'
  },
  {
    name: 'Amarone della Valpolicella',
    winery_id: 6,
    vintage: 2014,
    wine_type: 'Red',
    grape: 'Corvina, Rondinella, Molinara',
    country: 'Italy',
    region: 'Veneto'
  }
]

wineries.each do |winery|
  Winery.create(winery)
end

wines.each do |wine|
  Wine.create(wine)
end

Cellar.create!(user_id: 1, wine_id: 1, bottle_count: 1)
Cellar.create!(user_id: 1, wine_id: 2, bottle_count: 2)
Cellar.create!(user_id: 1, wine_id: 3, bottle_count: 3)
Cellar.create!(user_id: 1, wine_id: 4, bottle_count: 4)
Cellar.create!(user_id: 1, wine_id: 5, bottle_count: 5)
