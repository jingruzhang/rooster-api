# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Production.create(name: 'Bach, Mass in B Minor')

Instrument.create(position: "volin", calls: 5, concertmaster_principle_doubling: true)
Instrument.create(position: "volin", calls: 5, principle: true)
Instrument.create(position: "volin", calls: 5)
Instrument.create(position: "viola", calls: 5)
Instrument.create(position: "viola", calls: 5, principle: true)
Instrument.create(position: "cello", calls: 5)
Instrument.create(position: "cello", calls: 5, principle: true)
Instrument.create(position: "bass", calls: 5)
Instrument.create(position: "organ", calls: 5, principle: true)
Instrument.create(position: "harpsichord", calls: 5, principle: true)
Instrument.create(position: 'timpani', calls: 3)
Instrument.create(position: 'bassoon', calls: 4, principle: true)
Instrument.create(position: 'bassoon', calls: 4, doubling: true)
Instrument.create(position: 'flute', calls: 4, principle: true)
Instrument.create(position: 'flute', calls: 4)
Instrument.create(position: 'oboe', calls: 5, concertmaster_principle_doubling: true)
Instrument.create(position: 'oboe', calls: 5, doubling: true)
Instrument.create(position: 'horn', calls: 4, principle: true)
Instrument.create(position: 'trumpet', calls: 4, concertmaster_principle_doubling: true)
Instrument.create(position: 'trumpet', calls: 4)
Instrument.create(position: 'trumpet', calls: 4)