# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quarterback.create([
    { team: 'Chiefs', city: 'Kansas City', name: 'Patrick Mahomes' },
    { team: '49ers', city: 'San Francisco', name: 'Jimmy Garoppolo' }
])

Yard.create([
    { highest: 68, lowest: 11.5, quarterback_id: 1 },
    { highest: 44, lowest: 10.1, quarterback_id: 1 },
    { highest: 83, lowest: 10.1, quarterback_id: 1 },
    { highest: 33, lowest: 7.5, quarterback_id: 1 },
    { highest: 31, lowest: 8.2, quarterback_id: 1 },
    { highest: 52, lowest: 7.8, quarterback_id: 1 },
    { highest: 21, lowest: 6.9, quarterback_id: 1 },
    { highest: 63, lowest: 8.9, quarterback_id: 1 },
    { highest: 31, lowest: 5.7, quarterback_id: 1 },
    { highest: 47, lowest: 6.0, quarterback_id: 1 },
    { highest: 48, lowest: 7.1, quarterback_id: 1 },
    { highest: 41, lowest: 10.0, quarterback_id: 1 },
    { highest: 19, lowest: 7.6, quarterback_id: 1 },
    { highest: 47, lowest: 7.0, quarterback_id: 1 },
    { highest: 48, lowest: 9.2, quarterback_id: 1 },
    { highest: 60, lowest: 8.4, quarterback_id: 1 },
    { highest: 39, lowest: 6.1, quarterback_id: 2 },
    { highest: 39, lowest: 11.8, quarterback_id: 2 },
    { highest: 27, lowest: 8.7, quarterback_id: 2 },
    { highest: 22, lowest: 6.2, quarterback_id: 2 },
    { highest: 45, lowest: 7.4, quarterback_id: 2 },
    { highest: 40, lowest: 7.2, quarterback_id: 2 },
    { highest: 29, lowest: 8.0, quarterback_id: 2 },
    { highest: 32, lowest: 8.6, quarterback_id: 2 },
    { highest: 30, lowest: 5.4, quarterback_id: 2 },
    { highest: 57, lowest: 9.4, quarterback_id: 2 },
    { highest: 61, lowest: 12.7, quarterback_id: 2 },
    { highest: 33, lowest: 7.9, quarterback_id: 2 },
    { highest: 75, lowest: 10.0, quarterback_id: 2 },
    { highest: 29, lowest: 5.9, quarterback_id: 2 },
    { highest: 46, lowest: 9.2, quarterback_id: 2 },
    { highest: 49, lowest: 13.0, quarterback_id: 2 },
])