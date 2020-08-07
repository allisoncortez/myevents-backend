# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all


artShow = Event.create(
    title:"Monet",
    description: "free art show on the life of Monet and his work",
    # starttime,endtime
    category: "art",
    location: "Museum of Fine Art"
    )

# concert = Event.create()
# danceContest = Event.create()

