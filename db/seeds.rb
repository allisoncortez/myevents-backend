# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Event.destroy_all


artShow = Event.create(
    title:"Monet",
    description: "free art show on the life of Monet and his work",
    startTime: Date.strptime("20071119T0837", "%Y%m%dT%H%M"),
    endTime: Date.strptime("12/13/2013", "%m/%d/%Y"),
    category: "art",
    location: "Museum of Fine Art"
)

rockConcert = Event.create(
    title:"Courtney Bartnett",
    description: "spaces limited",
    startTime: Date.new(20021, 01, 10),
    endTime: Date.new(2021, 1, 10),
    category: "music",
    location: "HRC"
)

liveMusic = Event.create(
    title:"Orchestra",
    description: "spaces limited",
    startTime: Date.new(20021, 01, 10),
    endTime: Date.new(2021, 1, 10),
    category: "music",
    location: "Outdoor Theatre"
)

comment1 = Comment.create(description: "comment1", event_id:1)
comment2 = Comment.create(description: "comment2", event_id:1)
comment3 = Comment.create(description: "comment3", event_id:2)
comment4 = Comment.create(description: "comment4", event_id:2)
comment5 = Comment.create(description: "comment5", event_id:2)
comment6 = Comment.create(description: "comment6", event_id:3)
comment7 = Comment.create(description: "comment7", event_id:3)

