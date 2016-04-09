# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

OpenMat.create!([
  {
    location: "Pacific Beach",
    host: "Jimmy Newtron",
    number_people_attending: 5,
    starts_at: 2.days.from_now
  },
  {
    location: "Mission Beach",
    host: "Homer Simpson",
    number_people_attending: 8,
    starts_at: 1.day.from_now
  },
  {
    location: "Ocean Beach",
    host: "Peter Griffin",
    number_people_attending: 12,
    starts_at: 1.day.ago
  }
])