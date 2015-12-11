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

## Meet data
Meet.create(athleteNum: '1',
  meetNum: "1",
  event1: '17.50',
  event2: '38.63',
  event3: '105.22',
)
Meet.create(athleteNum: '1',
  meetNum: "1",
  event1: '2015-10-25 00:00:14 -0400',
  event2: '2015-10-25 00:00:31 -0400',
  event3: '2015-10-25 00:01:21 -0400',
)
Meet.create(athleteNum: '1',
  meetNum: "1",
  event1: '2015-10-25 00:00:12 -0400',
  event2: '2015-10-25 00:00:29 -0400',
  event3: '2015-10-25 00:01:03 -0400',
)
Meet.create(athleteNum: '1',
  meetNum: "1",
  event1: '2015-10-25 00:00:11 -0400',
  event2: '2015-10-25 00:00:27 -0400',
  event3: '2015-10-25 00:00:59 -0400',
)

MeetName.create(
  meetNum:"1",
  meetName:"2015 Jesse Owens Classic",
  meet_date: "2015-05-31 00:00:59 -0400"
)

MeetName.create(
  meetNum:"2",
  meetName:"2015 Springfield Invitational",
 meet_date: "2015-06-07 00:00:59 -0400"
)

MeetName.create(
  meetNum:"3",
  meetName:"2015 AAU District Qualifier",
  meet_date: "2015-06-15 00:00:59 -0400"
)
MeetName.create(
  meetNum:"4",
  meetName:"2015 AAU National Qualifier",
  meet_date: "2015-06-30 00:00:59 -0400"
)






