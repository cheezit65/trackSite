# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Athlete.delete_all
# . . . 
Athlete.create(athleteNum: '1',
  firstName: 'Jeff',
  lastName: 'Hogan',
  birthYear: '2001'
)
Athlete.create(athleteNum: '2',
  firstName: 'Terry',
  lastName: 'Foster',
  birthYear: '2001'
)
Athlete.create(athleteNum: '3',
  firstName: 'Marissa',
  lastName: 'Tomei',
  birthYear: '2004'
)
Athlete.create(athleteNum: '4',
  firstName: 'Stepanie',
  lastName: 'Ogle',
  birthYear: '2004'
)
