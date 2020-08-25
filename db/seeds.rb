
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

5.times do
    Event.create(
        title: Faker::Music.band,
        description: Faker::Lorem.paragraph,
        startTime: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all, format: :short),
        endTime: Faker::Time.forward(days: 1,  period: :all, format: :short),
        category:'music',
        location: Faker::Address.street_address
    )
end

3.times do
    Event.create(
        title: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 3),
        description: Faker::Lorem.paragraph,
        startTime: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all, format: :short),
        endTime: Faker::Time.forward(days: 1,  period: :all, format: :short),
        category:'art',
        location: Faker::Address.street_address
    )
end

comment1 = Comment.create(description: Faker::Lorem.paragraph, event_id:1)
comment2 = Comment.create(description: Faker::Lorem.paragraph, event_id:1)
comment3 = Comment.create(description: Faker::Lorem.paragraph, event_id:2)
comment4 = Comment.create(description: Faker::Lorem.paragraph, event_id:2)
comment5 = Comment.create(description: Faker::Lorem.paragraph, event_id:2)
comment6 = Comment.create(description: Faker::Lorem.paragraph, event_id:3)
comment7 = Comment.create(description: Faker::Lorem.paragraph, event_id:4)

